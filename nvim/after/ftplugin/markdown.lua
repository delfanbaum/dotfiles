vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.expandtab = true
vim.opt_local.textwidth = 0
vim.opt_local.formatoptions:remove({ "t", "c" })

-- move by visual lines (bare j/k); counts still hit real lines
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { buffer = true, expr = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { buffer = true, expr = true })

vim.keymap.set("n", "0", "g0", { buffer = true })
vim.keymap.set("n", "$", "g$", { buffer = true })
vim.keymap.set("n", "<Down>", "gj", { buffer = true })
vim.keymap.set("n", "<Up>", "gk", { buffer = true })
