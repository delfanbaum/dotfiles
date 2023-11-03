-- asciidoctor opts
vim.g.asciidoctor_fenced_languages = {
    'python',
    'javascript',
    'lua',
    'bash',
    'c'
}

-- Add italic and bold coloring (like atom used to :'-)) 
vim.cmd([[
    hi asciidoctorBold gui=bold
    hi asciidoctorItalic gui=italic
    autocmd FileType asciidoctor syntax spell toplevel " bug fix
]])

