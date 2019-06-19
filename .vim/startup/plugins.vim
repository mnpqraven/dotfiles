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
Plugin 'w0rp/ale'
Plugin 'lervag/vimtex'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'chrisbra/csv.vim'
if has('nvim')
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'mnpqraven/othi-airline-themes'
	"Plugin 'Shougo/deoplete.nvim'
endif
call vundle#end()

" csv.vim
let g:csv_delim_test = ',|; '
let g:csv_highlight_column = 'y'

"let g:no_csv_maps = 1

let g:csv_nomap_e = 1
let g:csv_nomap_h = 1
let g:csv_nomap_l = 1
let g:csv_nomap_j = 1
let g:csv_nomap_k = 1

autocmd BufNewFile,BufRead fugitive://* set bufhidden=delete
let g:tex_flavor = 'latex'

let g:pandoc#modules#disabled = ["keyboard", "spell"]
let g:pandoc#spell#enabled = 0

let g:deoplete#enable_at_startup = 1
let g:gitgutter_override_sign_column_highlight = 0
let g:tmux_navigator_no_mappings = 1
let g:ctrlp_show_hidden = 1

