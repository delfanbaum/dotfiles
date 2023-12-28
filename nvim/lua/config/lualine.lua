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
        return format.comma_value(vim.fn.wordcount().words) .. " words"
    else
        return ''
    end
end


lualine.setup {
  options = {
      icons_enables = true,
      theme = 'onedark',
      component_separators = {
          left = '|',
          right = '|'
      }
  },
  sections = {
      lualine_a = {{ 'mode', fmt = function(str) return str:sub(1,1) end }},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = { word_count,
                    -- 'encoding',
                    -- {
                    --     'filetype',
                    --     icon_only = true,
                    --     colored = false,
                    --     icon = { align = 'right' },
                    --     padding = { left = 1, right = 2}
                    -- }
                  },
      lualine_y = {'progress'},
      lualine_z = {'location'}
  },
}
