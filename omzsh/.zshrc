# THIS IS A MINIMAL ZSHRC; ADD TO IT AS NEEDED

# Where zsh lives
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
