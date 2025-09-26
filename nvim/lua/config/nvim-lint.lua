local nvim_lint_status_ok, nvim_lint = pcall(require, "lint")
if not nvim_lint_status_ok then
    return
end

nvim_lint.linters_by_ft = {
    bash = { "shellcheck" },
    css = { "stylelint" },
    javascript = { "eslint_d" },
    json = { "jsonlint" },
    lua = { "luacheck" },
    python = { "ruff" },
    htmldjango = { "curlylint" },
    scss = { "stylelint" },
    yaml = { "yamllint" },
}

vim.api.nvim_create_autocmd(
    { "BufWinEnter", "BufWritePost", "InsertLeave", "TextChanged" },
    {
        callback = function()
            nvim_lint.try_lint()
        end,
    }
)
