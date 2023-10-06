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

# container thing
export DOCKER_INFO='[DEV] '

# a fancy to get nvim in there
export PATH="/workspaces/digital-distribution/.devcontainer/bin/nvim-linux64/bin:$PATH"
