local use = require('packer').use
local lsp_fts = { -- update as needed
    'python',
    'javascript',
    'css',
    'html',
    'bash',
    'c',
    'typescript',
    'dockerfile'
}

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
    use {'habamax/vim-asciidoctor', 
         ft = {'asciidoc'}
    }

    -- "Focus mode" things
    use {
      "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup {
            window = {
                backdrop = 1,
                width = 100,
                options = {
                    number = false,
                    relativenumber = false
                }
            },
            plugins = {
                gitsigns = { enabled = true },
                tmux = { enabled = true },
                twilight = { enabled = false }
            },
            on_open = function(win)
                vim.o.scrolloff = 999
            end,
            on_close = function()
                vim.o.scrolloff = 5
            end
        }
      end
    }

    use {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {
            context = 2
        }
      end
    }

    -- Programming things
    use { 'neovim/nvim-lspconfig' } 
    use { 'hrsh7th/nvim-cmp' } -- Autocompletion plugin
    use { 'hrsh7th/cmp-nvim-lsp' } -- LSP source for nvim-cmp
--    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
--    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use { 'dense-analysis/ale', ft = lsp_fts } -- syntax

    -- Search things
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

end)
