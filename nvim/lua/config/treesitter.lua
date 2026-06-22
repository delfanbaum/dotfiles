local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
	return
end

local ensure_install = {
    "bash",
    "c",
    "javascript",
    "json",
    "jsonc",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "html",
    "htmldjango",
    "yaml",
    "ruby",
    "rust",
    "markdown",
    "markdown_inline",
    "glimmer",
    "regex",
    "vimdoc"
}

treesitter.setup({
  ensure_installed = ensure_install, -- one of "all" or a list of languages
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
