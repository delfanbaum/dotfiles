echo "Copying and/or updating dotfiles..."

cp -rup ./nvim ~/.config
cp -up ./vim/.vimrc ~/.vimrc
cp -up ./omzsh/. ~/
cp -up ./tmux/. ~/
cp -up ./alacritty ~/.config
