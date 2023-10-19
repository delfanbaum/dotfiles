# Ensure home is where the heart is
echo "XDG_CONFIG_HOME=$HOME" >> ~/.profile

# Install Homebrew (slow, but keeps everything else simpler)
if ! command brew -v &> /dev/null 
then
  if [ $(uname -m) == "arm64" ] && [ $(uname) == "Linux"]; then
    echo "Homebrew is not yet supported on ARM Linux :("
  else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

echo "Installing all the things..."
brew install neovim tmux bat pyvenv node fzf ripgrep

# install packer if it's not there already
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

case $($0) in
  "/bin/zsh")
    cp ~/.config/omzsh/.zshrc ~
    cp ~/.config/omzsh/.zsh_aliases ~
    cp ~/.config/omzsh/.bash_aliases ~  # just in case
    cp -v ~/.config/omzsh/custom_themes/refined.zsh-theme ~/.oh-my-zsh/custom/themes
  ;;
esac
