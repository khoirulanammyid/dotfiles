# Respect .profile things
if [ -f "$HOME/.profile" ]; then
    source "$HOME/.profile"
fi

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
