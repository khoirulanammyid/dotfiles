fp() {
    local project_dir
    project_dir=$(fd '^\.git$' ~/ \
        --hidden --no-ignore --type d --prune \
        --exclude '{.cache,node_modules,.local}' \
        2>/dev/null --exec echo {//} | fzf --height 50% --layout=reverse --border)
}

pass-fzf() {
    local target
    target=$(fd --type f --extension gpg . ~/.password-store 2>/dev/null | \
        sed "s|${HOME}/.password-store/||; s|\.gpg$||" | fzf)
    
    if [[ -n "$target" ]]; then
        if pass "$target" | grep -q "^otpauth://"; then
            pass otp -c "$target"
        else
            pass -c "$target"
        fi
    fi
}

y() {
    local tmp cwd; tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    command yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [[ "$cwd" != "$PWD" ]] && [[ -d "$cwd" ]] && builtin cd -- "$cwd"
    command rm -f -- "$tmp"
}

xbps-in() {
    xbps-query -Rs '*' | \
    fzf -m --prompt="Install package: " \
        --preview 'echo {} | awk "{print \$2}" | xargs xq' \
        --preview-window=right:60%:wrap | \
    awk '{print $2}' | \
    xargs -ro sudo xbps-install -S
}

# Fixed: Interactive Uninstaller
xbps-rm() {
    xbps-query -m | \
    fzf -m --prompt="Remove package: " \
        --preview 'echo {} | awk "{print \$2}" | xargs xq' \
        --preview-window=right:60%:wrap | \
    awk '{print $2}' | \
    xargs -ro sudo xbps-remove -R
}

fp-widget() { 
    fp 
    zle reset-prompt
}

pass-fzf-widget() { 
    pass-fzf 
    zle reset-prompt
}

zle -N fp-widget
zle -N pass-fzf-widget

bindkey -M viins '^g' fp-widget
bindkey -M viins '^f' pass-fzf-widget
