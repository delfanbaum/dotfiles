echo "Copying and/or updating dotfiles..."

cp -vnrup ./nvim ~/.config
cp -vnp ./vim/.vimrc ~/.vimrc
cp -vnrp ./omzsh/. ~/
cp -vnrp ./tmux/. ~/
cp -vnrp ./alacritty ~/.config
