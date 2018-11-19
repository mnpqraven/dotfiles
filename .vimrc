" MAPPINGS WITH <Esc> ARE ALSO INTERPRETED AS <Alt> DUE TO VIM EXPECTING 8-bit
" ENCODING
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
noremap E $
noremap <C-H> <C-W>h
noremap <C-N> <C-W>j
noremap <C-E> <C-W>l
noremap <C-L> <C-W>k


let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50
noremap <A-y> <C-e>
noremap <F5> :so .vimrc<CR>
" zoom and split resizing
let mapleader = " "
map <Leader>u :res +5<CR>
map <Leader>d :res -5<CR>

" NERDTree keys
noremap <C-\> :NERDTreeToggle<CR>
noremap <C-Tab> :NERDTree<CR>
set relativenumber
set complete=.,w,b,u,t,i,kspell
" set spell
colo dracula
syntax on
hi Normal ctermbg=none
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
set timeoutlen=500 ttimeoutlen=50
set noshowmode
