# Ensure home is where the heart is
echo "XDG_CONFIG_HOME=$HOME" >> ~/.profile

if [ $(uname) == "Darwin"]; then
  xcode-select --install
fi

if [ $(uname) == "Linux"]; then
  apt-get update && apt-get install git gcc clang -y
fi

# Install Homebrew (slow, but maybe keeps everything else simpler)
if ! command brew -v &> /dev/null 
then
  if [ $(uname -m) == "arm64" ] && [ $(uname) == "Linux"]; then
    echo "Homebrew is not yet supported on ARM Linux :("
  else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
fi

echo "Installing all the things..."
brew install \
    alacritty \
    neovim \
    tmux \
    asciidoctor \
    bat \
    pyvenv \
    node \
    fzf \
    ripgrep \
    pyenv \
    rbenv \
    ruby-build \
    node \
    wget \
    curl \
    sass/sass/sass \
    luarocks \
    go

# install omzsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Grab some fonts
echo "Pulling down our temrinal font..."
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IBMPlexMono.zip

echo "Moving config files..."
case $($0) in
  "/bin/zsh")
    cp ~/.config/vim/.vimrc ~
    cp ~/.config/omzsh/.zshrc ~
    cp ~/.config/omzsh/.zsh_aliases ~
    cp ~/.config/omzsh/.bash_aliases ~  # just in case
    cp -v ~/.config/omzsh/custom_themes/refined.zsh-theme ~/.oh-my-zsh/custom/themes
  ;;
esac

# install luacheck so we can work on files
luarocks install luacheck

# global gitignore
git config --global core.excludesFile '~/.gitignore'
