local status_ok, onedark = pcall(require, "onedarkpro")
if not status_ok then
    return
end

onedark.setup({
    colors = { -- brighten up git signs (for now)
        git_add = "#98c379",
        git_change = "#e5c07b",
        git_delete = "#e06c75",
    },
    highlights = { -- bring back the pretty purple italics please
        asciidocQuotedEmphasized = { fg = "#c678dd", italic = true },
        SpellCap = { fg = "#e5c07b" },
    },
    options = {
        cursorline = true
    }


})
