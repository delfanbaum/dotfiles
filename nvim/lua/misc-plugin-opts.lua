-- asciidoctor
vim.g.asciidoctor_fenced_languages = {'python', 'javascript'}

-- I really miss the whole atom thing; this adds italic
-- and bold coloring like atom used to
vim.cmd([[
    hi asciidoctorBold guifg=#e5c07b 
    hi asciidoctorItalic guifg=#c678dd gui=italic
    autocmd FileType asciidoctor syntax spell toplevel " to get over a bug
]])

-- NERDTree
vim.g.NERDTreeWinSize=25 -- Set default width
vim.g.NERDTreeShowHidden = true

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd("autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif")

-- FZF

vim.cmd([[
"    call fzf#run({'sink': 'vsplit'})
]])


-- Setup gitsigns
require('gitsigns').setup()
