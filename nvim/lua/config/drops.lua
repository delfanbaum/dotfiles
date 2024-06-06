-- screensaver
local drop_status_ok, drop = pcall(require, "drop")
if not drop_status_ok then
    return
end

drop.setup({
    -- theme = "summer",                                -- can be one of the default themes, or a custom theme
    theme = { -- "one dark casino, eh?"
        symbols = { "♠ ", "♡ ", "♢ ", "♣ ", "♤ ", "♥ ", "♦ ", "♧ " },
        colors = {
            "#e06c75",
            "#98c379",
            "#61afef",
            "#c678dd",
            "#56b6c2",
            "#abb2bf",
            "#e9969d",
            "#b3d39c",
            "#8fc6f4",
            "#d7a1e7",
            "#7bc6d0",
            "#c8cdd5"
        }
    },
    max = 50,                                        -- maximum number of drops on the screen
    interval = 300,                                  -- every 300ms update the drops
    screensaver = 1000 * 60 * 1,                     -- show after 1 minutes
    filetypes = { "dashboard", "alpha", "starter" }, -- enable/disable automatically for fts
})
