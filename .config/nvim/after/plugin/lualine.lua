local function modified()
    if vim.bo.modified then
        return '+'
    elseif vim.bo.modifiable == false or vim.bo.readonly == true then
        return '-'
    end
    return ''
end

local colors = require('lualine.themes.onedark')
local options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' }
}

local component_separators = { left = '', right = '' }
local separator_arrow = { left = '', right = '' }
local separator_arrowInv = { left = '', right = '' }
local separator_slanted = { left = '', right = '' }
local separator_slantedInv = { left = '', right = '' }

-- require('lualine').setup {
--   options = {
--     theme = 'onedark',
--     -- theme = 'codedark',
--     globalstatus = true,
--     -- component_separators = '',
--     section_separators = separator_arrow
--   },
--   sections = {
--     lualine_b = {
--       {
--         modified,
--         color = {bg = colors.replace.a.bg, fg = colors.replace.a.fg},
--         separator = separator_arrowInv
--       },
--       'branch', 'diff', 'diagnostics',
--     },
--     lualine_c = {
--       {'filename', file_status = false, path = 1},
--     }
--   },
--   winbar = {
--     lualine_a = {
--       { 'tabs', mode = 2 }
--     },
--     lualine_b = {},
--     lualine_c = {},
--     lualine_x = {},
--     lualine_y = {},
--     lualine_z = {'buffers'},
--   },
--   inactive_winbar = {
--     lualine_a = {'tabs'},
--     lualine_b = {},
--     lualine_c = {},
--     lualine_x = {},
--     lualine_y = {},
--     lualine_z = {},
--   },
--   extension = {
--     'quickfix'
--   },
-- }
