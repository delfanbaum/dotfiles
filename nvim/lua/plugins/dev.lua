return {
    -- Language Servers
    'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    'neovim/nvim-lspconfig',
    
    -- completion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',

    -- linting 
    {'mfussenegger/nvim-lint',
        event = {
            "BufReadPre",
            "BufNewFile"
        }
    },

    -- Extra formatting (null-ls)
    {'nvimtools/none-ls.nvim',
     dependences = {"nvim-lua/plenary.nvim"}
    },

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    -- Treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},


    -- Test runner
    {"nvim-neotest/neotest",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-neotest/neotest-python",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim"
      }
    }
}
