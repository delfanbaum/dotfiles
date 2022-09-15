require('lualine').setup {
  options = {
      theme = 'onedark',
      globalstatus = true,
      component_separators = { 
          left = '|',
          right = '|'
      }
  },
  sections = {
      lualine_a = {{ 'mode', fmt = function(str) return str:sub(1,1) end }},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 
                    {
                        'filetype',
                        icon_only = true,
                        colored = false
                    }
                  },
      lualine_y = {'progress'},
      lualine_z = {'location'}
  },
}
