" Vundle
" to install the plugins use :PluginInstall in vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jez/vim-superman'
if has('nvim')
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'mnpqraven/othi-airline-themes'
endif
call vundle#end()

let g:gitgutter_override_sign_column_highlight = 0
let g:tmux_navigator_no_mappings = 1
let g:ctrlp_show_hidden = 1
