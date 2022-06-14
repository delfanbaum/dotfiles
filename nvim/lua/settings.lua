HOME = os.getenv("HOME")

-- vim stuff

-- workarounds; note that autocmd will go away in 0.7.0
vim.cmd([[ 
    :command W w
    syntax on 
    autocmd BufRead,BufNewFile *.adoc setlocal nocursorline
]])


vim.opt.spell = true
vim.opt.spelllang = 'en_us' -- spelling is good!
vim.opt.number = true -- add line numbers
vim.opt.encoding = 'utf-8'
vim.opt.backup = false -- no backup file; 
vim.opt.swapfile = false -- no swap file;
                   -- because I don't really think that way
                   -- right now and I'm not sure it's worth
                   -- all the errors and so on at present.

vim.opt.splitright = true -- splits to right instead of left like 
                   -- that --other-- editor I used
vim.opt.splitbelow = true -- ditto 

vim.opt.scrolloff = 5 -- show some lines at the bottom


vim.opt.wrapscan = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true -- highlights while typing

-- Tab things and language things
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.textwidth = 79
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = true -- add soft wraps
vim.opt.linebreak = true

-- I _think_ this can all be replaced by treesitter?
-- autocmd Filetype html setlocal ts=2 sw=2
-- autocmd Filetype css setlocal ts=2 sw=2
-- autocmd Filetype scss setlocal ts=2 sw=2
-- autocmd Filetype javascript setlocal ts=2 sw=2
-- autocmd Filetype xml setlocal ts=2 sw=2
-- autocmd Filetype ruby setlocal ts=2 sw=2

vim.opt.foldmethod = "indent"
vim.opt.foldlevel= 99 -- reminder: use za to fold
vim.opt.clipboard = "unnamed"

-- let python_highlight_all=1

