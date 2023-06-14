local status_ok, zenmode = pcall(require, "zen-mode")
if not status_ok then
	return
end

zenmode.setup {
    window = {
        backdrop = 1,
        width = 100,
        options = {
            number = false,
            relativenumber = false
        }
    },
    plugins = {
        gitsigns = { enabled = true },
        tmux = { enabled = true },
        twilight = { enabled = false }
    },
    on_open = function()
        vim.o.scrolloff = 999
    end,
    on_close = function()
        vim.o.scrolloff = 5
    end
}
