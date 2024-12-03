return {
    settings = {
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
            features = { "all" }  -- for rustlings
        },
        procMacro = {
            enable = true
        },
    }
}
