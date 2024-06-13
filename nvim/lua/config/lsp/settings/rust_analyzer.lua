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
            features = { "exercises" }  -- for rustlings
        },
        procMacro = {
            enable = true
        },
    }
}
