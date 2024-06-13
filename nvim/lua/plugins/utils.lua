return {
    -- search
    'tpope/vim-surround',
    'windwp/nvim-autopairs',
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
        end
    },
    {
        'vidocqh/data-viewer.nvim',
        dependencies = {
            "nvim-lua/plenary.nvim",
            "kkharji/sqlite.lua", -- Optional, sqlite support
        }
    },
    "max397574/colortils.nvim",
}
