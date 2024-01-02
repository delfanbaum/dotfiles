local nvim_lint_status_ok, nvim_lint = pcall(require, "lint")
if not nvim_lint_status_ok then
	return
end

nvim_lint.linters_by_ft = {
    javascript = { "eslint_d" },
    python = { "ruff" }
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd(
    { "BufEnter", "BufWritePost", "InsertLeave" },
    { group = lint_augroup,
      callback = function()
        nvim_lint.try_lint()
      end,}
)
