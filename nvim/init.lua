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
require('config.autopairs')
require('config.cmp')
require('config.formatters')
require('config.gitsigns')
require('config.lsp')
require('config.lualine')
require('config.neotest')
-- require('config.nerdtree')
require('config.treesitter')
require('config.twilight')
require('config.zenmode')
