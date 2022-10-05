echo "Copying and/or updating dotfiles..."

cp -vnrup $(pwd)/nvim ~/.config
cp -vnp $(pwd)/vim/.vimrc ~/.vimrc
cp -vnrp $(pwd)/omzsh/. ~/
cp -vnrp $(pwd)/tmux/. ~/
cp -vnrp $(pwd)/alacritty ~/.config
