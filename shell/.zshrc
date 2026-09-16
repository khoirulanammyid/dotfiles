HISTFILE="$HOME/.config/zsh/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space

autoload -Uz compinit && compinit -C

[ -f "$HOME/.config/zsh/fzf-tab/fzf-tab.plugin.zsh" ] && . "$HOME/.config/zsh/fzf-tab/fzf-tab.plugin.zsh"
eval "$(fzf --zsh)"

[ -f "$HOME/.config/aliases" ] && . "$HOME/.config/aliases"
[ -f "$HOME/.config/zsh/functions.zsh" ] && . "$HOME/.config/zsh/functions.zsh"
[ -f "$HOME/.config/zsh/vim.plugin.zsh" ] && . "$HOME/.config/zsh/vim.plugin.zsh"
[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && . "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && . "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

bindkey '^ ' autosuggest-accept

setopt prompt_subst
precmd() { print -P "" }

PROMPT='%F{#d65d0e}%~
%F{#928374}>%f '

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec niri --session >/dev/null 2>&1
fi

if [ -n "$CONTAINER_ID" ] || [ -n "$DISTROBOX_ENTER_PATH" ]; then
    PS1="[ $CONTAINER_ID ] $PS1"
fi

# RUST
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
