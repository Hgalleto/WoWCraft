"""WoWCraft: WoW Forever talent and stat theorycrafter.

Double-click this file (or "Launch WoWCraft.bat") to start. It runs a small
local server on your PC and opens the app in its own window (if pywebview is
installed) or in your web browser. Builds are saved as JSON files in the
"builds" folder next to this file.

Command line:
    python WoWCraft.pyw            start the app
    python WoWCraft.pyw --update   refresh talent data and artwork, then exit
    python WoWCraft.pyw --update-items   update the gear, enchant and profession databases (only what changed)
    python WoWCraft.pyw --update-all     update everything: races, classes, talents, stats, gear, professions, sources
    add --full to re-check every item instead of just the changed ones
    python WoWCraft.pyw --browser  always use the web browser, even if pywebview is installed
"""
import json
import os
import subprocess
import sys
import threading
import time
import urllib.request
import webbrowser

ROOT = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, ROOT)

from wowcraft import server, updater  # noqa: E402

PORT = 8765
GAME_JSON = os.path.join(updater.WEB_DIR, "game.json")
SOURCE_JSON = os.path.join(updater.DATA_DIR, "source.json")


def already_running():
    try:
        with urllib.request.urlopen(f"http://127.0.0.1:{PORT}/api/ping", timeout=1.5) as r:
            return json.loads(r.read().decode()).get("ok")
    except Exception:
        return False


def ensure_art(log):
    """Unpack the bundled artwork on first run; download anything still missing."""
    import zipfile
    zpath = os.path.join(updater.WEB_DIR, "assets.zip")
    def count(d):
        return len(os.listdir(d)) if os.path.isdir(d) else 0
    icons = updater.ICON_DIR
    items_dir = os.path.join(updater.WEB_DIR, "assets", "items")
    stamp_path = os.path.join(updater.WEB_DIR, "assets", ".unpacked")
    stamp = str(os.path.getsize(zpath)) if os.path.exists(zpath) else ""
    try:
        old = open(stamp_path).read().strip()
    except OSError:
        old = ""
    if os.path.exists(zpath) and (count(icons) < 50 or count(items_dir) < 50 or old != stamp):
        with zipfile.ZipFile(zpath) as z:
            z.extractall(updater.WEB_DIR)
        with open(stamp_path, "w") as f:
            f.write(stamp)
        log("Unpacked artwork.")
    if count(icons) < 50:
        updater.update(log=log)


def data_is_stale(hours=12):
    try:
        return time.time() - os.path.getmtime(SOURCE_JSON) > hours * 3600
    except OSError:
        return True


def open_folder(path):
    os.makedirs(path, exist_ok=True)
    if sys.platform.startswith("win"):
        os.startfile(path)  # noqa: S606 (Windows only)
    elif sys.platform == "darwin":
        subprocess.Popen(["open", path])
    else:
        subprocess.Popen(["xdg-open", path])


def run_control_window(url, log_lines):
    """Small always-available control panel used when pywebview isn't installed."""
    import tkinter as tk
    from tkinter import ttk

    root = tk.Tk()
    root.title("WoWCraft")
    root.geometry("420x250")
    root.configure(bg="#15110d")
    try:
        from PIL import Image, ImageTk  # optional, only for the window icon
        icon = ImageTk.PhotoImage(Image.open(os.path.join(updater.ICON_DIR, "inv_misc_book_07.jpg")))
        root.iconphoto(True, icon)
    except Exception:
        pass
    style = ttk.Style(root)
    style.theme_use("clam")
    style.configure("W.TButton", font=("Segoe UI", 10, "bold"), padding=8, background="#3a2c1a", foreground="#e0b95c")
    style.map("W.TButton", background=[("active", "#4d3a22")])

    tk.Label(root, text="WoWCraft", font=("Georgia", 20, "bold"), fg="#e0b95c", bg="#15110d").pack(pady=(14, 0))
    tk.Label(root, text=f"Running at {url}", font=("Segoe UI", 9), fg="#a8987b", bg="#15110d").pack()
    status = tk.StringVar(value=log_lines[-1] if log_lines else "Ready.")
    tk.Label(root, textvariable=status, font=("Segoe UI", 9), fg="#ece2cc", bg="#15110d", wraplength=380).pack(pady=6)

    row = tk.Frame(root, bg="#15110d")
    row.pack(pady=4)

    def do_update():
        status.set("Updating talent data...")

        def work():
            try:
                from wowcraft import update_manager
                update_manager.run("talents", log=lambda m: root.after(0, status.set, m))
                root.after(0, status.set, "Talent data updated. Reload the app page to see it.")
            except Exception as e:
                root.after(0, status.set, f"Update failed: {e}")
        threading.Thread(target=work, daemon=True).start()

    ttk.Button(row, text="Open WoWCraft", style="W.TButton", command=lambda: webbrowser.open(url)).grid(row=0, column=0, padx=4, pady=4)
    ttk.Button(row, text="Saved builds folder", style="W.TButton", command=lambda: open_folder(server.BUILDS_DIR)).grid(row=0, column=1, padx=4, pady=4)
    ttk.Button(row, text="Update talent data", style="W.TButton", command=do_update).grid(row=1, column=0, padx=4, pady=4)
    ttk.Button(row, text="Quit", style="W.TButton", command=root.destroy).grid(row=1, column=1, padx=4, pady=4)
    tk.Label(root, text="Keep this window open while you use WoWCraft.", font=("Segoe UI", 8), fg="#6f634f", bg="#15110d").pack(side="bottom", pady=6)
    root.mainloop()


def main():
    args = set(sys.argv[1:])
    if "--update" in args:
        updater.update()
        return
    if "--update-items" in args or "--update-all" in args:
        from wowcraft import update_manager
        r = update_manager.run("everything" if "--update-all" in args else "items", full="--full" in args)
        for step in r["report"].values():
            for g, d in step["groups"].items():
                print(f"{g}: {d['total']} total, {d['added']} added, {d['removed']} removed, {d['changed']} changed")
        return

    if already_running():
        webbrowser.open(f"http://127.0.0.1:{PORT}/")
        return

    log_lines = []
    log = log_lines.append
    if not os.path.exists(GAME_JSON):
        updater.update(log=log)  # first run: must have data before opening
    elif data_is_stale():
        threading.Thread(target=lambda: _quiet_update(log), daemon=True).start()
    ensure_art(log)

    srv, url = server.start(PORT)
    if not os.path.exists(os.path.join(updater.WEB_DIR, "items.json")):
        # fresh copy (e.g. cloned from GitHub): build the gear, profession and stat data in the background.
        # Progress shows on the Updates tab.
        from wowcraft import update_manager
        update_manager.start("everything")

    if "--browser" not in args:
        try:
            import webview  # pywebview: native window
            webview.create_window("WoWCraft · Forever Talent Forge", url, width=1420, height=960, min_size=(900, 640),
                                  background_color="#0c0a08")
            webview.start()
            srv.shutdown()
            return
        except ImportError:
            pass
        except Exception as e:  # fall back to the browser if the native window can't start
            log(f"App window unavailable ({e}); using your browser.")

    webbrowser.open(url)
    try:
        run_control_window(url, log_lines)
    except Exception:
        print(f"WoWCraft is running at {url}  (press Ctrl+C to stop)")
        try:
            while True:
                time.sleep(3600)
        except KeyboardInterrupt:
            pass
    srv.shutdown()


def _quiet_update(log):
    try:
        updater.update(log=log)
    except Exception as e:
        log(f"Couldn't check for new talent data ({e}). Using the copy on disk.")


if __name__ == "__main__":
    main()
