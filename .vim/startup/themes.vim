" change airline color in the Palette section
" VIM-AIRLINE CONFIG ------------------------------------------------------------
let g:airline_theme='othipowerline'
"let g:airline_theme='monokai_tasty'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#branch#sha1_len = 6
let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr} %l%#__restore__#%#__restore__#:%v'
"let g:airline#extensions#tmuxline#enabled = 1
highlight SignColumn ctermbg=15

"colo othi
let g:vim_monokai_tasty_italic = 1
colo vim-monokai-tasty
filetype plugin on
syntax on
hi Normal ctermbg=none

" cursor
au VimLeave * set guicursor=a:ver90-blinkon0
set guicursor=a:block
"au VimLeave * set guicursor=a:hor70-blinkon0
"set guicursor=a:hor50-blinkon0

if !has('nvim')
	set rtp+=/home/othi/.local/lib/python3.7/site-packages/powerline/bindings/vim/
	set laststatus=2
	set t_Co=256
endif
set timeoutlen=500 ttimeoutlen=0
set updatetime=100
set noshowmode
