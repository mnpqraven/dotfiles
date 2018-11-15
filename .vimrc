" Basic settings
set is
set nocompatible
set number
filetype plugin on
set showcmd
" Colemak remapping
noremap J E
noremap j e
noremap N K
noremap n j
noremap E J
noremap e l
noremap K N
noremap k n
noremap l k
noremap <C-H> <C-W>h
noremap <C-N> <C-W>j
noremap <C-E> <C-W>l
noremap <C-L> <C-W>k
noremap <F5> :so .vimrc<CR>
set relativenumber
set complete=.,w,b,u,t,i,kspell
" set spell
syntax enable
set path+=**
set wildmenu
command! MakeTags !ctags -R .
" auto bracket
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
set rtp+=/home/othi/.local/lib/python3.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set timeoutlen=1000 ttimeoutlen=0
set noshowmode
