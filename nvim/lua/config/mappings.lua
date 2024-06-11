-- option defaults
local empty = {}
local noremap = { noremap = true }
local noremap_silent = { noremap = true, silent = true }

-- mappings
local maps = {
    -- Remove highlight
    { '',  '<Esc>',       ':noh<CR>',                                                    noremap },

    -- Window movement
    { '',  '<C-h>',       '<C-w>h',                                                      noremap_silent },
    { '',  '<C-j>',       '<C-w>j',                                                      noremap_silent },
    { '',  '<C-k>',       '<C-w>k',                                                      noremap_silent },
    { '',  '<C-l>',       '<C-w>l',                                                      noremap_silent },

    -- Spelling
    { 'n', '<leader>z',   '1z=',                                                         noremap_silent },

    -- fzf
    -- { 'n', '<C-p>',       ':FzfLua files<CR>',                                           noremap_silent },
    { 'n', '<C-e>',       ':FzfLua files<CR>',                                           noremap_silent },
    { 'n', "<leader>rg",  ":FzfLua grep_project<CR>",                                     noremap_silent },

    -- Dap
    { 'n', '<leader>dt',  "<cmd>lua require'dap'.toggle_breakpoint()<cr>",               empty },
    { 'n', '<leader>db',  "<cmd>lua require'dap'.step_back()<cr>",                       empty },
    { 'n', '<leader>dc',  "<cmd>lua require'dap'.continue()<cr>",                        empty },
    { 'n', '<leader>dC',  "<cmd>lua require'dap'.run_to_cursor()<cr>",                   empty },
    { 'n', '<leader>dd',  "<cmd>lua require'dap'.disconnect()<cr>",                      empty },
    { 'n', '<leader>dg',  "<cmd>lua require'dap'.session()<cr>",                         empty },
    { 'n', '<leader>di',  "<cmd>lua require'dap'.step_into()<cr>",                       empty },
    { 'n', '<leader>do',  "<cmd>lua require'dap'.step_over()<cr>",                       empty },
    { 'n', '<leader>du',  "<cmd>lua require'dap'.step_out()<cr>",                        empty },
    { 'n', '<leader>dp',  "<cmd>lua require'dap'.pause()<cr>",                           empty },
    { 'n', '<leader>dr',  "<cmd>lua require'dap'.repl.toggle()<cr>",                     empty },
    { 'n', '<leader>ds',  "<cmd>lua require'dap'.continue()<cr>",                        empty },
    { 'n', '<leader>dq',  "<cmd>lua require'dap'.close()<cr>",                           empty },
    { 'n', '<leader>dU',  "<cmd>lua require'dapui'.toggle({reset = true})<cr>",          empty },

    -- Neotest
    { 'n', '<leader>tr',  "<cmd>lua require('neotest').run.run()<cr>",                   empty },
    { 'n', '<leader>tf',  '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', empty },
    { 'n', '<leader>td',  "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", empty },
    { 'n', '<leader>ti',  "<cmd>lua require('neotest').output.open({enter = true})<cr>", empty },
    { 'n', '<leader>ta',  "<cmd>lua require('neotest').run.attach()<cr>",                empty },

    -- nvim-lint
    { 'n', '<leader>l',   "<cmd>lua require('lint').try_lint()<cr>",                     empty },

    -- toys
    { 'n', '<leader>fml', "<cmd>CellularAutomaton make_it_rain<CR>",                     noremap_silent }

}

-- workaround for Lua versions, just ignore the warning
table.unpack = table.unpack or unpack

for _, map in pairs(maps) do
    vim.api.nvim_set_keymap(table.unpack(map))
end

-- filetype specific mappings (for spell checking reasons)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "asciidoc",
    callback = function(event)
        vim.keymap.set("i", "...", "…", { buffer = event.buf })
    end,
})

-- Helper for outputting the current syntax group for highlighting purposes
-- vim.cmd([[
-- nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
-- \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
-- \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>
-- ]])
