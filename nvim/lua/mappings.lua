vim.api.nvim_set_keymap('','<Esc>', ':noh<CR>', { noremap = true })
vim.api.nvim_set_keymap('','<C-p>', ':Files<CR>', { noremap = true })
-- I need the C-g to see the full filepath sometimes. :Rg is sufficient
--vim.api.nvim_set_keymap('','<C-g>', ':Rg<CR>', { noremap = true })
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
