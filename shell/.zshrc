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
[ -f "$HOME/.config/zsh/functions.zsh" ] && . "$HOME/.config/zsh/functions.zsh"
[ -f "$HOME/.config/zsh/vim.plugin.zsh" ] && . "$HOME/.config/zsh/vim.plugin.zsh"

# zsh-autosuggestions zsh-syntax-highlighting install it with your system package manager
[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ] && . "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && . "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# quality of life
. "$HOME/.config/shell/aliases"
. "$HOME/.config/shell/niri-tty1"
. "$HOME/.config/shell/distrobox-prompt"
. "$HOME/.config/shell/foot-integration"
. "$HOME/.config/shell/go-to-project"
. "$HOME/.config/shell/xbps"
. "$HOME/.config/shell/yazi"
. "$HOME/.config/shell/fpass"

# ctrl + space to accept auto suggestion from zsh-autosuggestions
bindkey '^ ' autosuggest-accept

setopt prompt_subst
precmd() { print -P "" }

PROMPT='%F{#d65d0e}%~
%F{#928374}>%f '
