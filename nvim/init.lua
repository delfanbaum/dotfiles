require('plugins')
require('settings')
require('mappings')
require('lualine-opts')
require('lsp-config')
require('cmp-opts')
require('misc-plugin-opts')

vim.cmd([[
    let g:python3_host_prog = '~/.pyenv/shims/python'
]])
