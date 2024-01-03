require "config.lsp.mason"
require("config.lsp.handlers").setup()
require "config.lsp.nvim-lint"

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

-- override to speed up pyenv 
vim.cmd([[
    let g:python3_host_prog = '~/.pyenv/shims/python'
]])
