-- set leader to space before lazy (because it said so)
vim.g.mapleader = " "

-- plugins
require('config.lazy')
require('lazy').setup("plugins")

-- basic configuration
require('config.onedarkpro')
require('config.options')
require('config.active_colors')
require('config.mappings')

-- plugin configs
require('config.handlers').setup()
require('config.autopairs')
require('config.cmp')
require('config.formatters')
require('config.gitsigns')
require('config.lualine')
require('config.neotest')
require('config.treesitter')
require('config.twilight')
require('config.zenmode')
require('config.drops')
require('config.alpha_nvim')
require('config.nvim-lint')

vim.cmd([[
    autocmd BufNewFile,BufRead *.html.tera set filetype=htmldjango
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType typescript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType typescriptreact setlocal ts=2 sts=2 sw=2 expandtab
]])
