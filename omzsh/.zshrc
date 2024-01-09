# Where ZSH lives
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="refined"

# Plugins
plugins=(git)

# Python
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
fi
export PYENV_ROOT="$HOME/.pyenv"
export VIRTUALENVWRAPPER_PYTHON="$HOME/.pyenv/shims/python"

# Ruby
if command -v rbenv 1>/dev/null 2>&1; then
    eval "$(rbenv init - zsh)"
fi
export BUNDLE_PATH=~/.gems

# Startup
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Use separate aliases file
if [ -f ~/.zsh_aliases ]; then
source ~/.zsh_aliases
fi

# FZF command include hidden files and folders
export FZF_DEFAULT_COMMAND='find .'

# Update preferences
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
