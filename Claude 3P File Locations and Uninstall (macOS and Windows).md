# Claude 3P File Locations & Uninstall — macOS and Windows

A reference for where the Claude 3P (preview) desktop app stores files, how that changes with your configuration, and how to remove it completely.

> **Read this first — folder names depend on what's installed.** The regular Claude desktop app and Claude 3P are separate apps and use separate data folders. On a machine with **both**, you'll see both folders side by side; that's the normal way to tell them apart. Most people will have only one.
>
> | App | macOS app-data folder | Windows app-data folder |
> |---|---|---|
> | Regular Claude | `~/Library/Application Support/Claude/` | `%APPDATA%\Claude\` |
> | **Claude 3P** | `~/Library/Application Support/Claude-3p/` | `%APPDATA%\Claude-3p\` |
>
> Confirm the exact 3P folder name in your own install (open the folder in Finder/Explorer) — enterprise builds can vary, and the Windows product-folder name should be verified on a real 3P Windows machine.

> **Placeholders to confirm.** A few values below are sensible best-guesses pending verification on a clean 3P install. Replace them with the real values for your build:
>
> | Placeholder used in this doc | Best-guess value | How to confirm |
> |---|---|---|
> | 3P app-data folder | `Claude-3p` | Look under `~/Library/Application Support/` (macOS) or `%APPDATA%` (Windows) |
> | 3P macOS bundle identifier | `com.anthropic.claude3p` | `mdls -name kMDItemCFBundleIdentifier "/Applications/Claude 3P.app"` |
> | 3P Windows registry key | `HKEY_CURRENT_USER\Software\Claude-3p` | Search `regedit` for `Claude` / `Anthropic` |

---

## Which configuration do you have?

Two things vary between installs, and together they determine which folders exist:

1. **Which app(s)** are installed — regular Claude, Claude 3P, or both.
2. **Which tabs 3P shows** — **Cowork only**, or **Cowork + Code**.

The four permutations:

| # | Configuration | Tabs in 3P | Folder footprint |
|---|---|---|---|
| 1 | **Regular mode + 3P mode**, with **Cowork + Code tabs** | Cowork + Code | Both `Claude/` and `Claude-3p/` app-data **plus** `~/.claude/` (the Code tab is Claude Code). |
| 2 | **Both modes** (regular + 3P), **Cowork tab only** | Cowork | Both `Claude/` and `Claude-3p/` app-data. **No `~/.claude/`.** |
| 3 | **3P mode only**, with **both tabs** | Cowork + Code | `Claude-3p/` app-data **plus** `~/.claude/`. |
| 4 | **3P mode only**, **Cowork tab only** | Cowork | `Claude-3p/` app-data only. **No `~/.claude/`.** |

**The key distinction:** the **Code tab is Claude Code**, and Claude Code keeps its own configuration in `~/.claude/` (and `~/.claude.json`). A **Cowork-only** 3P does not create or use those — see ["Cowork-only vs. Cowork + Code"](#cowork-only-vs-cowork--code) below.

---

## Quick reference (Claude 3P)

| Purpose | macOS | Windows (direct `.exe` install) |
|---|---|---|
| The app itself | `/Applications/Claude 3P.app` | `%LOCALAPPDATA%\AnthropicClaude\` (app binaries) + launcher stub at `%LOCALAPPDATA%\Microsoft\WindowsApps\Claude.exe` |
| All app data: sessions, plugins, memory, outputs, uploads | `~/Library/Application Support/Claude-3p/` | `%APPDATA%\Claude-3p\` |
| App settings | `~/Library/Preferences/com.anthropic.claude3p.plist` | Inside `%APPDATA%\Claude-3p\` (JSON) + registry key `HKEY_CURRENT_USER\Software\Claude-3p` |
| Transient cache | `~/Library/Caches/com.anthropic.claude3p/` | `%APPDATA%\Claude-3p\Cache`, `\Code Cache`, `\GPUCache` |
| Logs / diagnostics | `~/Library/Logs/Claude-3p/` | `%APPDATA%\Claude-3p\logs\` |
| Linux sandbox VM image (large) | inside `~/Library/Application Support/Claude-3p/` | inside `%APPDATA%\Claude-3p\` |
| **Code tab only** — Claude Code config | `~/.claude/` and `~/.claude.json` | `%USERPROFILE%\.claude\` and `%USERPROFILE%\.claude.json` |

> `%APPDATA%` / `%LOCALAPPDATA%` are environment variables — paste them literally into the Explorer address bar (e.g. `%APPDATA%\Claude-3p`) and Windows expands them.

---

## Modes (tabs) in Claude 3P

Claude 3P shows up to **two tabs**: **Cowork** and **Code**. Regular Claude desktop has three tabs including a separate Chat tab — 3P does not. Chat-style conversation in 3P happens inside the Cowork tab when no project folder is connected. Some 3P installs show **only the Cowork tab**.

| Mode | Project folder? | What Claude can do with files |
|---|---|---|
| **Cowork — no folder** | None connected | Writes only to the session's `outputs/` folder |
| **Cowork — folder connected** | You select one via "Connect a folder" | Reads/writes directly to your selected folder |
| **Code** *(both-tabs configs)* | A project folder is the basis of the mode | Reads/writes directly to that project folder |

---

## Where Claude writes files

The rule is the same on both platforms; only the path syntax differs.

**Writes by default →** the session's `outputs/` folder.
**Writes elsewhere only if you specify it →** by connecting a folder (Cowork) or opening a project folder (Code).

### Cowork mode without a connected folder

Claude has no access to your file system. Anything it creates goes to the session's outputs folder:

- **macOS:** `~/Library/Application Support/Claude-3p/local-agent-mode-sessions/<session>/.../outputs/`
- **Windows:** `%APPDATA%\Claude-3p\local-agent-mode-sessions\<session>\...\outputs\`

- This is the only place Claude can write.
- Files surface to you via links in the chat.
- The session ID changes per session — this is working state, not a stable location.
- Files you upload land in a sibling `uploads/` folder (read-only to Claude).

### Cowork with a connected folder, or Code mode

When a folder is connected (via Cowork's "Connect a folder") or you're in Code mode (where the project folder is the basis of the session), that folder is mounted into Claude's sandbox. Claude can:

- Read and write directly to that folder — no longer confined to outputs.
- Edit files in place, run shell commands inside the folder, etc.
- The folder appears in the sandbox at `/sessions/<session>/mnt/<name>/`, but on your machine it's the real folder you chose.

The session's outputs folder still exists for scratch work, but **the connected/project folder becomes the primary place Claude operates on**.

### Side-by-side

| Behavior | Cowork (no folder) | Cowork (folder) / Code |
|---|---|---|
| Where Claude writes by default | `outputs/` (session-scoped) | Your selected/project folder |
| Can edit your existing files? | No | Yes |
| Can run shell commands on your files? | Only in `outputs/` | Yes, in the connected folder |
| Persistence | Session-scoped path | Your real folder, persists naturally |
| Sharing files back to you | Links to files in outputs | You already have the folder |

---

## Cowork-only vs. Cowork + Code

This is the difference your IT team controls by enabling the Code tab.

| | Cowork-only | Cowork + Code |
|---|---|---|
| Tabs | Cowork | Cowork + Code |
| App-data folder | `Claude-3p/` | `Claude-3p/` |
| Uses `~/.claude/` (Claude Code) | **No** | **Yes** — the Code tab is Claude Code |
| Default write location | session `outputs/` | session `outputs/` (Cowork) / the open project folder (Code) |
| Writes to your folders | only a folder you connect | a folder you connect (Cowork) or the project you open (Code) |

If you're on a **Cowork-only** install, you can ignore every mention of `~/.claude/` in this document — that folder belongs to the Code tab and to the separate Claude Code CLI, neither of which you have. An empty or missing `~/.claude/` is normal, not a sign anything is broken.

---

## Detailed structure of the 3P app-data folder

The Cowork session tree lives under the app-data folder. **Exact subfolder names vary by app version** — treat this as a map of *what* is stored, and confirm the precise names in your own install.

```
~/Library/Application Support/Claude-3p/      (Windows: %APPDATA%\Claude-3p\)
└── local-agent-mode-sessions/
    └── <session-id>/
        └── .../
            ├── outputs/        # Where Claude writes when no folder is connected
            ├── uploads/        # Files you uploaded into the session
            ├── memory/         # Persistent memory (survives sessions)
            └── plugins/        # Org-provisioned and individually installed plugin bundles
```

Plus, on the **Code tab / both-tabs config only**, Claude Code stores its settings, MCP server configs, and session history in `~/.claude/` and `~/.claude.json` (Windows: `%USERPROFILE%\.claude\` and `.claude.json`) — outside the app-data folder.

---

## Showing hidden folders

### macOS

`~/Library` is hidden by default.

- **Finder:** `Cmd + Shift + G`, paste the path, press Return.
- **Toggle hidden files:** `Cmd + Shift + .` (period) in any Finder window.
- **Always show ~/Library:** in your home folder, press `Cmd + J` and check "Show Library Folder".

### Windows

`AppData` is hidden by default.

- **Jump straight there:** paste `%APPDATA%\Claude-3p` (or `%LOCALAPPDATA%`) into the Explorer address bar and press Enter.
- **Show hidden items:** Explorer → **View → Show → Hidden items** (Windows 11) or **View → Hidden items** checkbox (Windows 10).

---

## Fully removing Claude 3P

Removing the app icon does **not** remove everything. On both platforms the standard removal leaves behind app data — most importantly the **Linux sandbox VM image** that powers Cowork's shell, which can be several gigabytes. To remove all traces, do the standard uninstall *and then* the manual cleanup.

> If regular Claude is **also** installed and you want to keep it, only touch the `Claude-3p` items below — leave the `Claude/` folder alone.

### macOS

**What the standard removal does**

There is no separate uninstaller app. Quit Claude 3P, then drag `/Applications/Claude 3P.app` to the Trash and empty it. **This removes only the application binary** — none of the data, caches, or the VM image.

**Manual cleanup (delete each of these)**

- `~/Library/Application Support/Claude-3p/` — the big one: all sessions, plugins, memory, and the multi-GB sandbox VM image
- `~/Library/Caches/com.anthropic.claude3p/`
- `~/Library/Logs/Claude-3p/`
- `~/Library/Preferences/com.anthropic.claude3p.plist`
- `~/Library/Saved Application State/com.anthropic.claude3p.savedState/`
- **Login/background items:** System Settings → General → Login Items & Extensions — remove any Claude 3P entries under both "Open at Login" and "Allow in the Background".
- **Keychain:** open Keychain Access and delete any saved Claude 3P / Anthropic login or token entries.
- **Both-tabs (Code) config only:** `~/.claude/` and `~/.claude.json`.

> Find the exact bundle identifier by searching `~/Library/` for `Claude` / `Anthropic`, or run `mdls -name kMDItemCFBundleIdentifier "/Applications/Claude 3P.app"`.

### Windows

**What the uninstaller does**

Go to **Settings → Apps → Installed apps → Claude 3P → Uninstall** (or Control Panel → Programs and Features). This runs the bundled uninstaller, which removes the **app binaries and Start Menu shortcut**. It generally does **not** remove your user data, caches, or the sandbox VM image.

**Manual cleanup (delete each of these)**

- `%APPDATA%\Claude-3p\` — all sessions, plugins, memory, logs, caches, and the multi-GB sandbox VM image
- `%LOCALAPPDATA%\AnthropicClaude\` — leftover app files, if the uninstaller missed them
- `%LOCALAPPDATA%\Microsoft\WindowsApps\Claude.exe` — launcher stub, if present
- **Registry:** delete `HKEY_CURRENT_USER\Software\Claude-3p` (use `regedit`; back up first if unsure)
- **Startup entry:** Task Manager → Startup apps — disable/remove any Claude 3P entry (also check `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run`)
- **Credential Manager:** Control Panel → Credential Manager → Windows Credentials — remove any saved Claude 3P / Anthropic credential.
- **Both-tabs (Code) config only:** `%USERPROFILE%\.claude\` and `%USERPROFILE%\.claude.json`.

**Microsoft Store / MSIX build (if that's how 3P was installed):** user data is *not* in `%APPDATA%\Claude-3p\`. It's virtualized under `%LOCALAPPDATA%\Packages\Claude_<hash>\LocalCache\Roaming\…`. Uninstalling an MSIX/Store app normally removes this package folder automatically — verify it's gone afterward.

> **Reclaiming space:** the sandbox VM image inside the app-data folder is the largest leftover (often several GB). If you uninstall and disk space doesn't come back, that folder is why — delete it by hand.
