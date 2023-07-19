echo "Configuring a-shell..."
config -b "#282c34" -p  # background color
config -f "#abb2bf" -p  # foreground color
config -k beam -p  # cursor as beam

echo "Setting up vim..."
cp .vimrc ~/Documents/.vimrc

vim_packages="joshdick/onedark.vim tpope/vim-surround junegunn/goyo.vim habamax/vim-asciidoctor sainnhe/everforest"

mkdir -p ~/Documents/.vim/pack/vendor/start

for p in ${vim_packages}; do
    path=${p##*/}
    destination=~/Documents/.vim/pack/vendor/start/$path
    if [ ! -d $destination]
        echo "Installing $p..."
        lg2 clone https://github.com/$p $destination
    else
        echo "$p is already installed."
    fi
done

echo "All set!"
