# My Zed Setup

Zed editor config — everything lives on the **right dock**, buffer on the left.

## Editor settings

- **Gruvbox Dark Hard** theme, **FantasqueSansM Nerd Font Mono** for both UI and buffer, 18pt
- `server` window decorations (no title-bar buttons), no cursor blink, `relative_line_numbers`
- Vim mode: normal-mode default, no system-clipboard write, smartcase + regex search, `gdefault`, relative line numbers toggle, 50ms yank highlight
- Open in existing window, 100-col preferred line length, bounded soft wrap, vertical scroll margin 8
- Docks on the **right** (agent, collaboration, debugger, git, outline, project panels), each 550px wide
- Zsh terminal shell, Prettier on (Rust formatter), PHP via `intelephense` with Pint format-on-save

## Agent servers

- `opencode` — model `opencode/big-pickle`
- `antigravity-acp` — model `gemini-3.5-flash-extra-low`, mode `yolo`

## LaTeX

`texlab` LSP: builds `main.tex` on save with `latexmk -pdf -f -synctex=1 -interaction=nonstopmode -output-directory=build` and forward-searches into `zathura` (jumps the editor to the matching line).

## Tasks (Laravel)

`artisan` convenience tasks: `migrate`, `migrate fresh --seed`, `tinker`, `optimize:clear`, `clear all` (rm vendor/node_modules + composer install), `pint all`, `tests` / `test current` (`${ZED_FILE}`), `npm build`/`npm install`, `composer setup`/`install`/`update`/`dump-autoload`, `run dev`/`dev0`/`dev1`.

## Keymap

### Workspace

| Key | Action |
| :--- | :--- |
| `alt-e` | Toggle focus project panel |
| `alt-g` | Toggle focus git panel |
| `alt-o` | Toggle focus outline |
| `alt-n` | Toggle focus terminal |
| `alt-r` | Toggle right dock |
| `alt-m` | Toggle bottom dock (terminal) |
| `alt-w` / `cmd-w` | Close active tab |
| `alt-b` | New terminal |
| `ctrl ctrl` | Toggle editor focus |
| `shift shift` | Toggle file finder |
| `shift ctrl` | Toggle outline outline view |
| `ctrl-!` | Collapse all in project panel |

### Panes

| Key | Action |
| :--- | :--- |
| `alt-h` / `alt-l` / `alt-k` / `alt-j` | Activate pane left / right / up / down |

### Editor (non-menu)

Vim defaults are mostly kept; a few overrides:

| Key | Action |
| :--- | :--- |
| `ctrl-c` | Copy |
| `ctrl-shift-v` | Paste |
| `ctrl-shift-a` | Select all |
| `ctrl-b` | Toggle left dock |

### Editor menu popup

| Key | Action |
| :--- | :--- |
| `ctrl-j` / `ctrl-k` | Context menu next / previous |
| `escape` | Cancel |

### Vim (normal mode)

| Key | Action |
| :--- | :--- |
| `w` / `b` / `e` | Next / previous **subword** start, subword end |
| `g e` | Previous subword end |

### Terminal

| Key | Action |
| :--- | :--- |
| `cmd-t` / `ctrl-t` | Toggle terminal focus |
| `cmd-k` / `ctrl-k` | Clear terminal |
| `cmd-w` / `alt-w` | Close active tab |
| `alt-b` | New terminal |

### Outline / File finder menus

| Key | Action |
| :--- | :--- |
| `h` / `k` / `j` / `l` | Parent / previous / next / confirm (vim navigation) |
| `cmd-backspace` | Close selected tab |

### Project panel (not editing — vim file manager)

| Key | Action |
| :--- | :--- |
| `escape` | Unfocus (back to editor) |
| `enter` | Open |
| `a` / `o` | New file / new directory |
| `r` / `x` / `y` / `p` / `d` | Rename / cut / copy / paste / delete |
| `l` / `h` | Expand / collapse entry |
| `j` / `k` | Move selection down / up |