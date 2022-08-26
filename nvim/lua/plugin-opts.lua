-- colors

vim.o.termguicolors = 1
vim.cmd'colorscheme onedark'

-- lighline

vim.cmd([[
    let g:lightline = {
 	\ 'colorscheme': 'one',
	\ 'mode_map': {
    	    \ 'n': 'N',
            \ 'i' : 'I',
            \ 'R' : 'R',
            \ 'v' : 'V',
            \ 'V' : 'VL',
            \ "\<C-v>": 'VB',
            \ 'c' : 'C',
            \ 's' : 'S',
            \ 'S' : 'SL',
            \ "\<C-s>": 'SB',
            \ 't': 'T',
            \ },
	\}
]])

-- asciidoctor

vim.g.asciidoctor_fenced_languages = {'python', 'javascript'}

-- NERDTree
 
vim.g.NERDTreeWinSize=25 -- Set default width
vim.g.NERDTreeShowHidden = true

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd("autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif")

-- FZF

vim.cmd([[
"    call fzf#run({'sink': 'vsplit'})
]])

-- ALE

vim.cmd([[
    let g:ale_linters_ignore = {
        \ 'python': ['pylint', 'pyright', 'flake8']
    \}
    let g:ale_echo_msg_format = '%linter% says %s'
    let g:ale_virtualtext_cursor = 1
    let g:ale_lint_on_text_changed = 0
    let g:ale_lint_on_save = 1
    let g:ale_lint_on_insert_leave = 0
]])
