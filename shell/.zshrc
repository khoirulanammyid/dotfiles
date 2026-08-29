HISTFILE="$HOME/.config/zsh/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space

autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit
else
    compinit -C
fi

eval "$(fzf --zsh)"
[ -f "$HOME/.config/zsh/fzf-tab/fzf-tab.plugin.zsh" ] && . "$HOME/.config/zsh/fzf-tab/fzf-tab.plugin.zsh"

[ -f "$HOME/.config/aliases" ] && . "$HOME/.config/aliases"
[ -f "$HOME/.config/zsh/functions.zsh" ] && . "$HOME/.config/zsh/functions.zsh"
[ -f "$HOME/.config/zsh/vim.plugin.zsh" ] && . "$HOME/.config/zsh/vim.plugin.zsh"
[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && . "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && . "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

bindkey '^ ' autosuggest-accept

setopt prompt_subst
precmd() { print -P "" }

PROMPT='%F{#d65d0e}%~%f
%F{#928374}>%f '

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec niri-session
fi
