local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "config.lsp.mason"
require("config.lsp.handlers").setup()
--require "config.lsp.null-ls"

-- override to speed up pyenv 
vim.cmd([[
    let g:python3_host_prog = '~/.pyenv/shims/python'
]])
