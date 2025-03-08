local format = require 'config.formatters'

local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

-- add word count
local function word_count()
    local fts = {
        text = true,
        markdown = true,
        asciidoc = true
    }
    if fts[vim.bo.filetype] then
        if vim.api.nvim_get_mode().mode == "V" then
            return format.comma_value(vim.fn.wordcount().visual_words) .. " words"
        else
            return format.comma_value(vim.fn.wordcount().words) .. " words"
        end
    else
        return ''
    end
end


lualine.setup {
    options = {
        icons_enables = true,
        component_separators = {
            left = '|',
            right = '|'
        },
        section_separators = {
            left = '', -- for now, let's have a home page
            right = ''
        },
    },
    sections = {
        lualine_a = { { 'mode', fmt = function(str) return str:sub(1, 1) end } },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { word_count,
            -- 'encoding',
            {
                'filetype',
                icon_only = false,
                colored = false,
                icon = { align = 'right' },
                padding = { left = 1, right = 1 }
            }
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}
