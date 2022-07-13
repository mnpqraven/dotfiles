set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:vimtex_compiler_progname = 'nvr'

" Keybindings
lua require('bindings')
" General settings
lua require('settings')
" Plugins
source $HOME/.config/nvim/startup/plugins.vim
lua require('plugins')
" Themes and coloway customization
lua require('themes')
