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
    {
        'mfussenegger/nvim-lint',
        event = {
            "BufReadPre",
            "BufNewFile"
        }
    },

    -- Snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },


    -- Test runner
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
            "nvim-neotest/neotest-go",
        }
    },
}
