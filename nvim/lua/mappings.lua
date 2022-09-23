vim.api.nvim_set_keymap('','<Esc>', ':noh<CR>', { noremap = true })

-- fzf and Rg
vim.api.nvim_set_keymap('','<C-p>', ':Files<CR>', { noremap = true })
--vim.api.nvim_set_keymap('','<C-F>', ':Rg<CR>', { noremap = true })

-- text movement
vim.api.nvim_set_keymap('','k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('','<Up>', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i','<Up>', '<C-o>gk', 
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap('','j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('','<Down>', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i','<Down>', '<C-o>gj', 
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap('','0', 'g0', { noremap = true, silent = true })
vim.api.nvim_set_keymap('','$', 'g$', { noremap = true, silent = true })

-- window movement
vim.api.nvim_set_keymap('','<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('','<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('','<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('','<C-l>', '<C-w>l', { noremap = true, silent = true })

-- nerdtree toggle
vim.api.nvim_set_keymap('','<C-e>', ':NERDTreeToggle<CR> | :wincmd p<CR>',
                        { noremap = true, silent = true })

-- auto close things everywhere
vim.api.nvim_set_keymap('i', '"', '""<left>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '(', '()<left>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '[', '[]<left>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '{', '{}<left>', { noremap = true, silent = true})
-- don't set this for now, because this is a PITA when writing text with apostrophes
-- vim.api.nvim_set_keymap('i', "'", "''<left>", { noremap = true, silent = true})
