local status_ok, zenmode = pcall(require, "zen-mode")
if not status_ok then
	return
end

zenmode.setup {
    window = {
        backdrop = 1,
        width = 80,
        options = {
            number = false,
            relativenumber = false
        }
    },
    plugins = {
        gitsigns = { enabled = true },
        tmux = { enabled = true },
        twilight = { enabled = false },
        alacritty = {
          enabled = true,
          -- font = 15
    }
    },
    on_open = function()
        -- vim.o.scrolloff = 999
        vim.opt.mouse = ""
    end,
    on_close = function()
        -- vim.o.scrolloff = 5
        vim.opt.mouse = "nv"
    end
}
