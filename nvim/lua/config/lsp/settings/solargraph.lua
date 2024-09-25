local lspconfig, _ = pcall(require, "lspconfig")
if not lspconfig then
  return
end

return {
    cmd = { os.getenv("HOME") .. "/.rbenv/shims/solargraph", 'stdio' },
    root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
    settings = {
        solargraph = {
            autoformat = true,
            completion = true,
            diagnostic = true,
            folding = true,
            references = true,
            rename = true,
            symbols = true
        }
    }
}
