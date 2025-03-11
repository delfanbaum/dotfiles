return {
    settings = {
        ['rust-analyzer'] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
                features = { "all" } -- for all features always
            },
            procMacro = {
                enable = true
            },
        }
    }
}
