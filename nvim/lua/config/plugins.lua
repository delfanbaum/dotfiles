local use = require('packer').use

return require('packer').startup(function()

    -- Packer can manage itself!
    use 'wbthomason/packer.nvim'

    -- File tree things
    use {'preservim/nerdtree', opt = true, cmd = {'Nerdtree', 'NERDTreeToggle'}}
    use {'Xuyuanp/nerdtree-git-plugin', opt = true, cmd = {'Nerdtree', 'NERDTreeToggle'}}
    use {'ryanoasis/vim-devicons', opt = true, cmd = {'Nerdtree', 'NERDTreeToggle'}}

    -- Color things
    use 'joshdick/onedark.vim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Git things
    use 'lewis6991/gitsigns.nvim'

    -- Writing things
    use 'tpope/vim-surround'
    use {'habamax/vim-asciidoctor', ft = {'asciidoc'} }
    use 'windwp/nvim-autopairs'
    use 'numToStr/Comment.nvim'

    -- "Focus mode" things
    use "folke/zen-mode.nvim"

    -- Cheat codes
    -- use "folke/which-key.nvim"

    -- Completion 
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'saadparwaiz1/cmp_luasnip' }

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }
    use { 'rafamadriz/friendly-snippets' }

    -- Language Servers
    use { 'hrsh7th/cmp-nvim-lsp' } -- LSP source for nvim-cmp
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter' }

    -- Search things
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

end)
