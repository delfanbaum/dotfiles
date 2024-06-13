return {
    {
        'tpope/vim-surround',
        lazy = true,
        event = "InsertEnter",
    },
    {
        'windwp/nvim-autopairs',
        lazy = true,
        event = "InsertEnter",
    },
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = true,
        cmd = { "FzfLua" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
        end
    },
    {
        'vidocqh/data-viewer.nvim',
        cmd = {
            "DataViewer"
        },
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kkharji/sqlite.lua", -- Optional, sqlite support
        }
    },
    {
        "max397574/colortils.nvim",
        lazy = true,
        cmd = { "Colortils" }
    },
}
