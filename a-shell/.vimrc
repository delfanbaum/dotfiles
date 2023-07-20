" vimrc for a-shell (and mini)

let mapleader=' '

" environment defaults
syntax on
set nocompatible
set number
set encoding=utf-8
set splitright
set splitbelow
set scrolloff=5
set clipboard=unnamed

" tab things
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" search
set ignorecase
set smartcase
set hlsearch
set wrapscan
set mouse=nv

" escape clear search
noremap <CR> :noh<CR><CR> 

" poor habits helper
:command W w

" prose
set wrap
set linebreak

" spelling
set spell
set spelllang=en
set spellsuggest=best,5
nnoremap <silent> <leader>z 1z=

" color things
set termguicolors

colorscheme onedark
hi asciidoctorBold guifg=#e5c07b 
hi asciidoctorItalic guifg=#c678dd gui=italic cterm=italic
autocmd FileType asciidoctor syntax spell toplevel " to get over a bug

" cursor on insert
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" backspace because... 
set backspace=indent,eol,start

" commands for characters the folding keyboard is missing
command Tilde :normal i ~<ESC>
command Backtic :normal i `<ESC>

" key mappings for movement
noremap <silent> 0 g0
noremap <silent> $ g$
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \     'left': [ [ 'mode' ], [ 'filename' ], [ 'modified' ] ],
      \     'right': [ [ 'lineinfo' ], [ 'percent' ] ]
      \   },
      \ 'mode_map': {
        \ 'n' : 'N',
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
      \ }
