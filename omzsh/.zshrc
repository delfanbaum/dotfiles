# Where ZSH lives
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="refined"

# Plugins
plugins=(git)

# Startup
source $ZSH/oh-my-zsh.sh

# Use separate aliases file
if [ -f ~/.zsh_aliases ]; then
source ~/.zsh_aliases
fi

# FZF command include hidden files and folders
export FZF_DEFAULT_COMMAND='find .'
