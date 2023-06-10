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

    -- Language Servers
    use { 'hrsh7th/cmp-nvim-lsp' } -- LSP source for nvim-cmp
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use { 'neovim/nvim-lspconfig' }

    -- Completion 
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'saadparwaiz1/cmp_luasnip' }

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }
    use { 'rafamadriz/friendly-snippets' }


    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter' }

    -- Search things
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    -- Debugger
    -- p
    use "theHamsta/nvim-dap-virtual-text"
    use "rcarriga/nvim-dap-ui"
    use "mfussenegger/nvim-dap-python"

    use {
      "mfussenegger/nvim-dap",
      opt = true,
      module = { "dap" },
      requires = {
        "theHamsta/nvim-dap-virtual-text",
        "rcarriga/nvim-dap-ui",
        "mfussenegger/nvim-dap-python",
        "nvim-telescope/telescope-dap.nvim",
        { "leoluz/nvim-dap-go", module = "dap-go" },
        { "jbyuki/one-small-step-for-vimkind", module = "osv" },
        { "mxsdev/nvim-dap-vscode-js", module = { "dap-vscode-js" } },
        {
          "microsoft/vscode-js-debug",
          opt = true,
          run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out" 
        },
      },
      config = function()
        require("config.dap").setup()
      end,
      disable = false,
    }

end)
