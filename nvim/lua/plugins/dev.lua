return {
    -- Language Servers
    "neovim/nvim-lspconfig",
    {
        "williamboman/mason.nvim",
        lazy = true,
        cmd = { "Mason" },
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
    },

    -- completion
    {
        'hrsh7th/nvim-cmp',
        event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
        }
    },

    -- linting
    {
        'mfussenegger/nvim-lint',
        event = {
            "BufReadPre",
            "BufNewFile"
        }
    },

    -- Snippets
    {
        'L3MON4D3/LuaSnip',
        lazy = true,
        build = "make install_jsregexp",
        event = "InsertEnter",
        dependencies = {
            'rafamadriz/friendly-snippets',
        }
    },

    -- Treesitter
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = false },


    -- Test runner
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
            "rouge8/neotest-rust"
        },
        ft = {
            "python",
            "rust",
        }
    },

    -- non LSP language files
    {
        "imsnif/kdl.vim",
        lazy = true,
        ft = {
            "kdl"
        }
    },

    -- git things
    'lewis6991/gitsigns.nvim',
    {
        "sindrets/diffview.nvim",
        lazy = true,
        cmd = { "DiffviewOpen" }
    },

    -- rust
    {
        'saecki/crates.nvim',
        tag = 'stable',
        config = function()
            require('crates').setup({
                lsp = {
                    enabled = true,
                    -- this is inelegant, isn't it?
                    on_attach = require("config.lsp.handlers").on_attach,
                    actions = true,
                    completion = true,
                    hover = true
                }
            })
        end,
    },
    -- {
    --     "cordx56/rustowl",
    --     dependencies = { "neovim/nvim-lspconfig" },
    --     ft = {
    --         "rust"
    --     }
    -- }

    -- typescript
    {
        "pmizio/typescript-tools.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        opts = {},
    }
}
