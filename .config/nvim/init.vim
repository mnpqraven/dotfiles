set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
let g:vimtex_compiler_progname = 'nvr'

" Keybindings
source $HOME/.config/nvim/startup/bindings.vim
" General settings
source $HOME/.config/nvim/startup/settings.vim
" Plugins
source $HOME/.config/nvim/startup/plugins.vim
" Functions and commands
source $HOME/.config/nvim/startup/functions.vim
" Themes and coloway customization
source $HOME/.config/nvim/startup/themes.vim

lua require('init')
