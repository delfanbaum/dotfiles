local use = require('packer').use

return require('packer').startup(function()

    -- Packer can manage itself(!)
    use 'wbthomason/packer.nvim'

    -- File tree things
    use 'preservim/nerdtree'
    use 'Xuyuanp/nerdtree-git-plugin'
    use 'ryanoasis/vim-devicons'

    -- Color things
    use 'joshdick/onedark.vim'
    use 'itchyny/lightline.vim'
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
          require('gitsigns').setup()
        end
    }

    -- Writing things
    use 'habamax/vim-asciidoctor'
    use 'tpope/vim-surround'

    -- Programming things
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'dense-analysis/ale' -- syntax

    -- Search things
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

end)
