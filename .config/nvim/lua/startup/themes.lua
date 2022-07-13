vim.cmd([[
" in case these are used
" let g:vim_monokai_tasty_italic = 1
" let g:onedark_terminal_italics = 1
" let g:codedark_italics = 1
" let g:srcery_italic = 1
" let g:srcery_inverse = 0
" let g:srcery_bg_passthrough = 1
" let g:onedark_config = {
"     \ 'style': 'warmer',
" \}


" COLORSCHEMES
" colo vim-monokai-tasty
" codedark's bg
" let g:srcery_black = '#1e1e1e'
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
]])
