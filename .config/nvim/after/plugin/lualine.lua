local function modified()
  if vim.bo.modified then
    return '+'
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return '-'
  end
  return ''
end

local colors = require('lualine.themes.onedark')

require('lualine').setup {
  options = {
    -- theme = 'onedark',
    theme = 'codedark',
    globalstatus = true,
    component_separators = '',
    -- section_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_c = {
      {'filename', file_status = false, path = 1},
      {
        modified,
        color = {bg = colors.replace.a.bg, fg = colors.replace.a.fg},
        -- separator = { left = '', right = ''}
        separator = { left = '', right = ''}
      }
    }
  },
  tabline = {
    lualine_a = {
      { 'tabs', mode = 2 }
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'buffers'},
  },
  extension = {
    'quickfix'
  },
}

