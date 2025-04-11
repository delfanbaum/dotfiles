# Oh My ZSH
ZSH_THEME="refined"
plugins=(git asdf)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
zstyle ':omz:update' mode reminder

# System things
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export EDITOR=nvim

# Ruby
export BUNDLE_PATH=~/.gems

# Rust
. "$HOME/.cargo/env"

# Use separate aliases file
if [ -f ~/.zsh_aliases ]; then
  source ~/.zsh_aliases
fi

# FZF command include hidden files and folders
export FZF_DEFAULT_COMMAND='find .'
