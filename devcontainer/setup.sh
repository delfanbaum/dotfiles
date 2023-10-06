# Setup script assumes dev container is run as root
# Script also assumes that this script is being run as our "postCreateCommand"

# install nvim
if [ ! -d .devcontainer/bin ]; then
    curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
    mkdir -p .devcontainer/bin && tar xzvf nvim-linux64.tar.gz -C .devcontainer/bin
    rm nvim-linux64.tar.gz
fi

# install python things we want
pip install pynvim pyright

# install zsh
wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -

# install some other nice things
apt-get update && apt-get install tmux bat fzf ripgrep tar curl -y

# install dotfiles
git clone https://github.com/delfanbaum/dotfiles.git ~/.config

# copy over zsh env
cp ~/.config/devcontainer/.zshrc ~/.zshrc
cp ~/.config/omzsh/.zsh_aliases ~/.zsh_aliases
cp -v ~/.config/omzsh/custom_themes/refined.zsh-theme /root/.oh-my-zsh/custom/themes


# install packer and packages
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install the project
poetry install
