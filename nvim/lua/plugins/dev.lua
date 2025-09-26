return {
    -- Language Servers
    "neovim/nvim-lspconfig",
    {
        "mason-org/mason.nvim",
        lazy = true,
        cmd = { "Mason" },
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
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
        lazy = true,
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
            "rouge8/neotest-rust"
        },
        keys = { "<leader>tr", "<leader>tf", "<leader>td", "<leader>ti" }
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
        event = { "BufRead Cargo.toml" },
        config = function()
            require('crates').setup()
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
        lazy = true,
        dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        opts = {},
        ft = {
            "js",
            "ts",
            "jsx",
            "tsx",
        }
    }
}
