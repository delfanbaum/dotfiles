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
require('config.handlers')
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

-- override to speed up pyenv, rbenv, also set .tera filetypes
vim.cmd([[
    let g:python3_host_prog = '~/.asdf/shims/python'
    let g:ruby_host_prog = '~/.asdf/shims/ruby'
    autocmd BufNewFile,BufRead *.html.tera set filetype=htmldjango
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
]])

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})
