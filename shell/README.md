# My Shell Setup

Zsh + Bash environment:

- **Environment** (`.profile`) — `EDITOR=nvim`, `VISUAL=nvim`, `PAGER=less`, `BROWSER=firefox`, `TERMINAL=footclient`, `en_US.UTF-8` locale, XDG dirs, and PATH for `~/.local/bin`, herd-lite, pnpm, bun, cargo, and Android SDK
- **`.zshrc`** — history tuning, completion via `fzf` + vendored **fzf-tab**, **zsh-autosuggestions** + **zsh-syntax-highlighting**, vendored **zsh-vi-mode**, two-line prompt, auto-launches `niri-session` on tty1
- **Aliases** — file/dir, git, pacman, docker, systemd, dotfiles management (`dotl`/`dotu`/`dotr`/`dotc`), encryption, and `sv`/`v`/`vim`→nvim, `z`→zeditor
- **Functions** — `fp` (fzf-find a git project and cd), `pass-fzf` (search & copy password-store entries/OTP via fzf), `y` (yazi that cd's to its last dir)
- Bash variants (`.bashrc`, `.bash_profile`) with aliases + vi mode