-- space leader (pun intended)
vim.g.mapleader = ' '

-- remove highlight
vim.api.nvim_set_keymap('','<Esc>', ':noh<CR>', { noremap = true })

-- fzf 
vim.api.nvim_set_keymap('','<C-p>', ':Files<CR>', { noremap = true })

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


-- Output the current syntax group for highlighting purposes
vim.cmd([[
nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
]])

-- too lazy to install which-key, so
local dapopts = {}
vim.api.nvim_set_keymap('n', '<leader>dt', "<cmd>lua require'dap'.toggle_breakpoint()<cr>",  dapopts)
vim.api.nvim_set_keymap('n', '<leader>db', "<cmd>lua require'dap'.step_back()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dc', "<cmd>lua require'dap'.continue()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dC', "<cmd>lua require'dap'.run_to_cursor()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dd', "<cmd>lua require'dap'.disconnect()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dg', "<cmd>lua require'dap'.session()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>di', "<cmd>lua require'dap'.step_into()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>do', "<cmd>lua require'dap'.step_over()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>du', "<cmd>lua require'dap'.step_out()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dp', "<cmd>lua require'dap'.pause()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dr', "<cmd>lua require'dap'.repl.toggle()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>ds', "<cmd>lua require'dap'.continue()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dq', "<cmd>lua require'dap'.close()<cr>", dapopts)
vim.api.nvim_set_keymap('n', '<leader>dU', "<cmd>lua require'dapui'.toggle({reset = true)<cr>", dapopts)
