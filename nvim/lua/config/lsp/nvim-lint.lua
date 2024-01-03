local nvim_lint_status_ok, nvim_lint = pcall(require, "lint")
if not nvim_lint_status_ok then
	return
end

nvim_lint.linters_by_ft = {
    javascript = { "eslint_d" },
    lua = { "luacheck" },
    python = { "ruff" },
}

vim.api.nvim_create_autocmd(
    { "BufWinEnter", "BufWritePost", "InsertLeave", "TextChanged" },
    { callback = function()
        nvim_lint.try_lint()
      end, }
)
