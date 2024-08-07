HOME = os.getenv("HOME")

vim.opt.spell = true
vim.opt.spelllang = 'en_us'     -- spelling is good!
vim.opt.spellsuggest = 'best,5' -- spelling is good!
vim.opt.number = true -- show line number
vim.opt.relativenumber = true   -- add rel line numbers
vim.opt.cursorline = true   -- to see if I like it
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.backup = false    -- no backup file;
vim.opt.swapfile = false  -- no swap file;

vim.opt.splitright = true -- splits to right instead of left like
vim.opt.splitbelow = true -- ditto

vim.opt.scrolloff = 5     -- show some lines at the bottom


vim.opt.wrapscan = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true -- highlights while typing

-- Tab things and language things (overridden by LSPs often)
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.textwidth = 80 -- keep
vim.opt.wrap = true    -- add soft wraps
vim.opt.linebreak = true

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99 -- reminder: use za to fold
vim.opt.clipboard = "unnamed"

vim.opt.mouse = "nv"

-- Set automatically in nvim > 0.10
-- vim.o.termguicolors = 1
vim.o.background = 'dark'
vim.cmd.colorscheme 'onedark'

-- vim stuff
vim.cmd [[:command W w]]
