" change airline color in the Palette section
" VIM-AIRLINE CONFIG ------------------------------------------------------------
" let g:airline_theme='othipowerline'
" let g:airline_theme='monokai_tasty'
let g:airline_theme='base16_monokai'
" let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#buf_label_first = 1
let g:airline#extensions#tabline#buffers_label = 'bufs'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#branch#sha1_len = 6
let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr} %l%#__restore__#%#__restore__#:%v'
"let g:airline#extensions#tmuxline#enabled = 1

" in case these are used
" let g:vim_monokai_tasty_italic = 1
" let g:onedark_terminal_italics = 1
" let g:codedark_italics = 1
let g:srcery_italic = 1
let g:srcery_inverse = 0
" let g:srcery_bg_passthrough = 1
" let g:onedark_config = {
"     \ 'style': 'warmer',
" \}


" COLORSCHEMES
" colo vim-monokai-tasty
" colo onedark
" codedark's bg
" let g:srcery_black = '#1e1e1e'
colo onedark
" au ColorScheme * highlight Normal ctermbg=NONE guibg=NONE

syntax on

" cursor
au VimLeave * set guicursor=a:ver90-blinkon0
set guicursor=a:block
"au VimLeave * set guicursor=a:hor70-blinkon0
"set guicursor=a:hor50-blinkon0

set timeoutlen=500 ttimeoutlen=0
set updatetime=100
set noshowmode
