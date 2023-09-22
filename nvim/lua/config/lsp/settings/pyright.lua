return {
  settings = {
    python = {
      analysis = {
        autoImportCompletions = true,
        typeCheckingMode = "on",
        reportMissingImports = false  -- other linters are less stupid about this
      },
    },
  },
}
