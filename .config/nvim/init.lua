vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:vimtex_compiler_progname = 'nvr'
]])

-- General settings
require('startup.settings')
-- Plugins
require('startup.plugins')
-- Keybindings
require('startup.bindings')
-- Themes and coloway customization
require('startup.themes')
