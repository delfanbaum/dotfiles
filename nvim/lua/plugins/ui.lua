return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons' }
    },
    {
        "folke/zen-mode.nvim",
        lazy = true,
        cmd = { "ZenMode" }
    },
    {
        "folke/twilight.nvim",
        lazy = true,
        cmd = { "Twilight" }
    },
    {
        "nkakouros-original/numbers.nvim",
        lazy = false
    },

    -- fun things
    {
        "folke/drop.nvim",
        tag = "v1.1.0" -- custom theme API changed and docs haven't been updated

    },
    'goolord/alpha-nvim',
    {
        "eandrju/cellular-automaton.nvim",
        lazy = true,
        cmd = { "CellularAutomaton " }
    },
    "sphamba/smear-cursor.nvim",

    {
        "HiPhish/rainbow-delimiters.nvim",
    }
}
