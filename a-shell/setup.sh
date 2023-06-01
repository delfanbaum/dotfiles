# ensure we're starting in the "home" directory
cd

echo "Configuring a-shell colors..."
config -b "#282c34" -p  # background color
config -f "#abb2bf" -p  # foreground color
config -k beam -p  # cursor as beam

echo "Setting up vim plugins..."

packages=("joshdick/onedark.vim" "tpope/vim-surround" "junegunn/goyo.vim" "habamax/vim-asciidoctor")

mkdir -p .vim/pack/vendor/start

for p in ${packages[@]}; do
    echo "Installing $p..."
    path=${p##*/}
    lg2 clone --depth 1 https://github.com/$p .vim/pack/vendor/start/$path
done
