# Ensure home is where the heart is
echo "XDG_CONFIG_HOME=$HOME" >> ~/.profile

echo "Installing all the things..."
case $(uname) in
  "Darwin") # setup for a new mac
    brew install neovim tmux bat pyvenv
    ;;
  "Linux")
    # check for neovim first
    if ! command nvim -v $> /dev/null 
    then
      curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
      ./nvim.appimage --appimage-extract
      ./squashfs-root/AppRun --version
      sudo mv squashfs-root /
      sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
    fi
    ;;
esac

# install packer if it's not there already
if [ ! -d "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

case $($0) in
  "/bin/zsh")
    cp ~/.config/omzsh/.zshrc ~
    cp ~/.config/omzsh/.zsh_aliases ~
    cp -v ~/.config/omzsh/custom_themes/refined.zsh-theme ~/.oh-my-zsh/custom/themes
  ;;
esac
