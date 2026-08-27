fp() {
    local project_dir
    project_dir=$(fd '^\.git$' ~/ \
        --hidden --no-ignore --type d --prune \
        --exclude '{.cache,node_modules,.local}' \
        2>/dev/null --exec echo {//} | fzf --height 50% --layout=reverse --border)
    
    if [[ -n "$project_dir" ]]; then
        cd "$project_dir" && zle && zle reset-prompt
    fi
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
bindkey -M viins '^p' pass-fzf-widget
