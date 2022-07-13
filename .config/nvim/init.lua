vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:vimtex_compiler_progname = 'nvr'
]])

-- Keybindings
require('startup.bindings')
-- General settings
require('startup.settings')
-- Plugins
require('startup.plugins')
-- Themes and coloway customization
require('startup.themes')
