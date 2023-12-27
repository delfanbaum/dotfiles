-- option defaults
local empty = {}
local noremap = { noremap = true}
local noremap_silent = { noremap = true, silent = true}

-- mappings
local maps = {
    -- Remove highlight
    {'','<Esc>', ':noh<CR>', noremap},

    -- Text movement
    {'','k', 'gk', noremap_silent},
    {'','<Up>', 'gk', noremap_silent},
    {'i','<Up>', '<C-o>gk', noremap_silent},
    {'','j', 'gj', noremap_silent},
    {'','<Down>', 'gj', noremap_silent},
    {'i','<Down>', '<C-o>gj', noremap_silent},
    {'','0', 'g0', noremap_silent},
    {'','$', 'g$', noremap_silent},

    -- Window movement
    {'','<C-h>', '<C-w>h', noremap_silent},
    {'','<C-j>', '<C-w>j', noremap_silent},
    {'','<C-k>', '<C-w>k', noremap_silent},
    {'','<C-l>', '<C-w>l', noremap_silent},

    -- Spelling
    {'n', '<leader>z', '1z=', noremap_silent},

    -- Nerdtree
    {'','<C-e>', ':NERDTreeToggle<CR> | :wincmd p<CR>', noremap_silent},

    -- fzf
    {'','<C-p>', ':Files<CR>', noremap},

    -- Dap
    {'n', '<leader>dt', "<cmd>lua require'dap'.toggle_breakpoint()<cr>",  empty},
    {'n', '<leader>db', "<cmd>lua require'dap'.step_back()<cr>", empty},
    {'n', '<leader>dc', "<cmd>lua require'dap'.continue()<cr>", empty},
    {'n', '<leader>dC', "<cmd>lua require'dap'.run_to_cursor()<cr>", empty},
    {'n', '<leader>dd', "<cmd>lua require'dap'.disconnect()<cr>", empty},
    {'n', '<leader>dg', "<cmd>lua require'dap'.session()<cr>", empty},
    {'n', '<leader>di', "<cmd>lua require'dap'.step_into()<cr>", empty},
    {'n', '<leader>do', "<cmd>lua require'dap'.step_over()<cr>", empty},
    {'n', '<leader>du', "<cmd>lua require'dap'.step_out()<cr>", empty},
    {'n', '<leader>dp', "<cmd>lua require'dap'.pause()<cr>", empty},
    {'n', '<leader>dr', "<cmd>lua require'dap'.repl.toggle()<cr>", empty},
    {'n', '<leader>ds', "<cmd>lua require'dap'.continue()<cr>", empty},
    {'n', '<leader>dq', "<cmd>lua require'dap'.close()<cr>", empty},
    {'n', '<leader>dU', "<cmd>lua require'dapui'.toggle({reset = true})<cr>", empty},

    -- Neotest
    {'n', '<leader>tr', "<cmd>lua require('neotest').run.run()<cr>", empty},
    {'n', '<leader>tf', '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', empty},
    {'n', '<leader>td', "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", empty},
    {'n', '<leader>ti', "<cmd>lua require('neotest').output.open({enter = true})<cr>", empty},
    {'n', '<leader>ta', "<cmd>lua require('neotest').run.attach()<cr>", empty},
}

-- workaround for Lua versions, just ignore the warning
table.unpack = table.unpack or unpack

for _, map in pairs(maps) do
    vim.api.nvim_set_keymap(table.unpack(map))
end

-- Helper for outputting the current syntax group for highlighting purposes
-- vim.cmd([[
-- nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
-- \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
-- \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
-- ]])
