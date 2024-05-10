local status_ok, auto_dark_mode = pcall(require, "auto-dark-mode")
if not status_ok then
    return
end

vim.o.termguicolors = 1

auto_dark_mode.setup({
    update_interval = 1000,
    set_dark_mode = function()
        vim.api.nvim_set_option('background', 'dark')
        vim.cmd('colorscheme onedark')
    end,
    set_light_mode = function()
        vim.api.nvim_set_option('background', 'light')
        vim.cmd('colorscheme solarized-flat')
    end,
})
