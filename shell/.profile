# Editor & Pager
export EDITOR="nvim"
export VISUAL="nvim"
export PAGER="less"
export BROWSER="firefox"
export TERMINAL="footclient"

# Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Herd Lite
export PATH="/home/me/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/me/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# PNPM
export PNPM_HOME="/home/me/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# BUN GLOBAL
export PATH="/home/me/.bun/bin:$PATH"

# cargo
. "$HOME/.cargo/env"

# android-sdk
export ANDROID_HOME="$HOME/.local/android/sdk"
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin

# local/bin
export PATH="$HOME/.local/bin:$PATH"
