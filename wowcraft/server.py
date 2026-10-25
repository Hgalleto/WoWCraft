"""Local web server for WoWCraft: serves the talent forge UI and saves builds as JSON files."""
import json
import os
import re
import threading
import time
import urllib.error
import urllib.request
from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from urllib.parse import unquote, urlparse

VERSION = "5.4"
PKG_DIR = os.path.dirname(os.path.abspath(__file__))
WEB_DIR = os.path.join(PKG_DIR, "web")
ROOT_DIR = os.path.dirname(PKG_DIR)
BUILDS_DIR = os.path.join(ROOT_DIR, "builds")
CURRENT_FILE = os.path.join(BUILDS_DIR, "_current.json")
CALIB_FILE = os.path.join(BUILDS_DIR, "_calibration.json")
ID_RE = re.compile(r"^[A-Za-z0-9_-]{1,80}$")
# 3D model files from Wowhead's viewer are fetched once and kept outside OneDrive
ZAM_HOST = "https://wow.zamimg.com/"
ZAM_RE = re.compile(r"^modelviewer/[A-Za-z0-9_./-]+$")
ZAM_CACHE = os.path.join(os.environ.get("LOCALAPPDATA") or os.path.join(os.path.expanduser("~"), ".cache"), "WoWCraft", "modelcache")
ZAM_TYPES = {"json": "application/json", "js": "text/javascript", "webp": "image/webp", "png": "image/png", "jpg": "image/jpeg"}
_lock = threading.Lock()


def _slug(s):
    return re.sub(r"[^A-Za-z0-9]+", "-", s).strip("-")[:40] or "build"


def _write_json(path, data):
    tmp = path + ".tmp"
    with open(tmp, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=1, ensure_ascii=False)
    os.replace(tmp, path)


def list_builds():
    out = []
    if not os.path.isdir(BUILDS_DIR):
        return out
    for fn in os.listdir(BUILDS_DIR):
        if not fn.endswith(".json") or fn.startswith("_"):
            continue
        try:
            with open(os.path.join(BUILDS_DIR, fn), encoding="utf-8") as f:
                b = json.load(f)
            b["id"] = fn[:-5]
            out.append(b)
        except (OSError, ValueError):
            continue  # skip half-synced or hand-edited files that don't parse
    out.sort(key=lambda b: b.get("savedAt", 0), reverse=True)
    return out


class Handler(SimpleHTTPRequestHandler):
    def __init__(self, *a, **kw):
        super().__init__(*a, directory=WEB_DIR, **kw)

    def log_message(self, *a):  # keep the console quiet
        pass

    def end_headers(self):
        if self.path.endswith((".html", ".json")) or self.path in ("/", ""):
            self.send_header("Cache-Control", "no-store")
        super().end_headers()

    # ---------- helpers ----------
    def _json(self, code, obj):
        body = json.dumps(obj).encode("utf-8")
        self.send_response(code)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def _body(self):
        n = int(self.headers.get("Content-Length") or 0)
        if n > 5_000_000:
            raise ValueError("too large")
        return json.loads(self.rfile.read(n).decode("utf-8") or "null")

    def _api(self):
        p = urlparse(self.path).path
        return p[5:] if p.startswith("/api/") else None

    def _zam(self, rel):
        rel = rel.split("?")[0]
        if not ZAM_RE.match(rel) or ".." in rel:
            return self._json(400, {"error": "bad path"})
        path = os.path.join(ZAM_CACHE, *rel.split("/"))
        if not os.path.exists(path):
            try:
                req = urllib.request.Request(ZAM_HOST + rel, headers={"User-Agent": "Mozilla/5.0 (WoWCraft)", "Referer": "https://www.wowhead.com/"})
                with urllib.request.urlopen(req, timeout=40) as r:
                    data = r.read()
            except urllib.error.HTTPError as e:
                self.send_response(e.code)
                self.end_headers()
                return
            except Exception:
                self.send_response(504)
                self.end_headers()
                return
            os.makedirs(os.path.dirname(path), exist_ok=True)
            tmp = path + ".part"
            with open(tmp, "wb") as f:
                f.write(data)
            os.replace(tmp, path)
        with open(path, "rb") as f:
            data = f.read()
        self.send_response(200)
        self.send_header("Content-Type", ZAM_TYPES.get(rel.rsplit(".", 1)[-1], "application/octet-stream"))
        self.send_header("Content-Length", str(len(data)))
        self.send_header("Cache-Control", "max-age=604800")
        self.end_headers()
        self.wfile.write(data)

    # ---------- verbs ----------
    def do_GET(self):
        p = urlparse(self.path).path
        if p.startswith("/zam/"):
            return self._zam(p[5:])
        route = self._api()
        if route is None:
            return super().do_GET()
        if route == "ping":
            return self._json(200, {"ok": True, "version": VERSION, "builds": BUILDS_DIR})
        if route == "current":
            try:
                with open(CURRENT_FILE, encoding="utf-8") as f:
                    return self._json(200, json.load(f))
            except (OSError, ValueError):
                return self._json(200, {})
        if route == "calibration":
            try:
                with open(CALIB_FILE, encoding="utf-8") as f:
                    return self._json(200, json.load(f))
            except (OSError, ValueError):
                return self._json(200, {})
        if route == "builds":
            return self._json(200, {"builds": list_builds()})
        if route == "update":
            from wowcraft import update_manager
            return self._json(200, update_manager.status())
        return self._json(404, {"error": "not found"})

    def do_PUT(self):
        route = self._api()
        if route not in ("current", "calibration"):
            return self._json(404, {"error": "not found"})
        try:
            data = self._body()
            if not isinstance(data, dict):
                return self._json(400, {"error": "expected an object"})
            with _lock:
                os.makedirs(BUILDS_DIR, exist_ok=True)
                _write_json(CURRENT_FILE if route == "current" else CALIB_FILE, data)
            return self._json(200, {"ok": True})
        except Exception as e:
            return self._json(400, {"error": str(e)})

    def do_POST(self):
        route = self._api() or ""
        if route.startswith("update/"):
            from wowcraft import update_manager
            try:
                body = self._body() or {}
            except Exception:
                body = {}
            try:
                ok = update_manager.start(route[7:], full=bool(isinstance(body, dict) and body.get("full")))
            except ValueError as e:
                return self._json(400, {"error": str(e)})
            return self._json(200 if ok else 409, {"ok": ok, "error": None if ok else "An update is already running."})
        if route != "builds":
            return self._json(404, {"error": "not found"})
        try:
            b = self._body()
            if not isinstance(b, dict) or "state" not in b:
                return self._json(400, {"error": "missing build state"})
            with _lock:
                os.makedirs(BUILDS_DIR, exist_ok=True)
                bid = f"{_slug(b.get('name', 'build'))}-{int(time.time() * 1000)}"
                b["id"] = bid
                _write_json(os.path.join(BUILDS_DIR, bid + ".json"), b)
            return self._json(200, b)
        except Exception as e:
            return self._json(400, {"error": str(e)})

    def do_DELETE(self):
        route = self._api() or ""
        if not route.startswith("builds/"):
            return self._json(404, {"error": "not found"})
        bid = unquote(route[len("builds/"):])
        if not ID_RE.match(bid):
            return self._json(400, {"error": "bad id"})
        path = os.path.join(BUILDS_DIR, bid + ".json")
        with _lock:
            if os.path.exists(path):
                os.remove(path)
        return self._json(200, {"ok": True})


def start(port=8765):
    """Start the server on `port` (or a free port if taken). Returns (server, url)."""
    for p in (port, 0):
        try:
            srv = ThreadingHTTPServer(("127.0.0.1", p), Handler)
            break
        except OSError:
            continue
    t = threading.Thread(target=srv.serve_forever, daemon=True)
    t.start()
    return srv, f"http://127.0.0.1:{srv.server_address[1]}/"
