HOME = os.getenv("HOME")

-- vim stuff
vim.cmd([[ 
    :command W w
    syntax on 
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

vim.opt.foldmethod = "indent"
vim.opt.foldlevel= 99 -- reminder: use za to fold
vim.opt.clipboard = "unnamed"

vim.opt.mouse = "a"
