-- asciidoctor opts
vim.g.asciidoctor_fenced_languages = {
    'python',
    'javascript'
}

-- Add italic and bold coloring (like atom used to :'-)) 
vim.cmd([[
    hi asciidoctorBold guifg=#e5c07b 
    hi asciidoctorItalic guifg=#c678dd gui=italic
    autocmd FileType asciidoctor syntax spell toplevel " bug fix
]])

