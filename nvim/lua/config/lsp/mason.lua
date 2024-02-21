local default_install = { -- "ensure installed" list
	"ruff_lsp",
    "eslint",
    "pyright",
	"tsserver",
	"bashls",
	"jsonls",
	"yamlls",
    "glint",
    "tailwindcss",
    "gopls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

mason.setup(settings)

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
	ensure_installed = default_install,
	automatic_installation = true,
    registries = {
        "github:mason-org/mason-registry",
        "lua:mason-registry.index"
      }
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}
local installed_servers = mason_lspconfig.get_installed_servers()

for _, server in pairs(installed_servers) do
	opts = {
		on_attach = require("config.lsp.handlers").on_attach,
		capabilities = require("config.lsp.handlers").capabilities,
        settings = {
            Lua = { -- hide all those annoying "undefined global" messages
                diagnostics = { globals = {"vim"}}
            }
        }
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "config.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
