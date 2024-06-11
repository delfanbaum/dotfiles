-- alpha dashboard thing
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    ".------..------..------..------.",
    "|N.--. ||V.--. ||I.--. ||M.--. |",
    "| :♠ : || :  : || :♥ : || :  : |",
    "| :  : || :♣ : || :  : || :♦ : |",
    "| '--'N|| '--'V|| '--'I|| '--'M|",
    "`------'`------'`------'`------'",
    "",
    "",
}
dashboard.section.header.opts.hl = "Function"

dashboard.section.buttons.val = {
    dashboard.button('n', "New", "<cmd>ene<CR>"),
    dashboard.button('e', "Files", ":FzfLua files<CR>"),
    dashboard.button('s', "Search", ":FzfLua grep_project<CR>"),
    dashboard.button('q', "Quit", "<cmd>qa<CR>")
}

alpha.setup(dashboard.opts)
