if [ $1 ]; then
    args=$1
else
    args="NONE"
fi

echo "Configuring a-shell..."
config -b "#282c34" -p  # background color
config -f "#abb2bf" -p  # foreground color
config -k beam -p  # cursor as beam

echo "Setting up vim..."
cp .vimrc ~/Documents/.vimrc

vim_packages="joshdick/onedark.vim tpope/vim-surround junegunn/goyo.vim habamax/vim-asciidoctor sainnhe/everforest itchyny/lightline.vim"

mkdir -p ~/Documents/.vim/pack/vendor/start

for p in ${vim_packages}; do
    path=${p##*/}
    destination=~/Documents/.vim/pack/vendor/start/$path
    if [ ! -d $destination ]; then
        echo "Installing $p..."
        lg2 clone https://github.com/$p $destination
    else
        if [ $args = "update" ]; then
            echo "$p is already installed. Checking for updates..."
            cd $destination
            lg2 pull
        else
            echo "$p is already installed."
        fi
    fi
done

cp ~/Documents/.vim/pack/vendor/start/onedark.vim/autoload/lightline/colorscheme/onedark.vim ~/Documents/.vim/pack/vendor/start/lightline.vim/autoload/lightline/colorscheme/

echo "Installing some useful packages"
pip install beautifulsoup4 asciidoc

echo "All set!"
