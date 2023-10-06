# Some global things we'll want to do everywhere
# We assume that nvim and tmux are provided as "features"
# We also assume that the following two lines are being run as our "postCreateCommand"

# git clone https://github.com/delfanbaum/dotfiles.git ~/.usrconfig
# export XDG_CONFIG_HOME=~/.usrconfig

# setup tmux
cat <<EOF >>~/.tmux.conf
if-shell "who | grep -q vscode" "source-file ~/.usrconfig/tmux/tmux.devcontainer.conf"
EOF

# install packer (for now; should probably replace with lazy at some point)
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# copy over our .zshrc file(s) (note: no custom theme for now)
cp ~/.usrconfig/omzsh/.zshrc ~/.zshrc
cp ~/.usrconfig/omzsh/.zsh_aliases ~/.zsh_aliases


