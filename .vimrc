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
nnoremap <CR><CR> :
noremap <C-H> <C-W>h
noremap <C-N> <C-W>j
noremap <C-E> <C-W>l
noremap <C-L> <C-W>k

" indentation in vim
set shiftwidth=2
set tabstop=4
set expandtab
set smartindent

" workaround to get vim getting Alt responses
let c='a'
while c <= 'z'
exec "set <A-".c.">=\e".c
exec "imap \e".c." <A-".c.">"
let c = nr2char(1+char2nr(c))
endw

" leader bindings
set timeout ttimeoutlen=50
noremap <A-y> <C-e>
noremap <F5> :so ~/.vimrc<CR>
" split resizing
let mapleader=" "
map <Leader>t :NERDTree<CR>
map <A-l> :res +5<CR>
map <A-n> :res -5<CR>
map <A-h> :vertical resize -5<CR>
map <A-e> :vertical resize +5<CR>
" NERDTree keys
noremap <C-\> :NERDTreeToggle<CR>
" noremap <C-Tab> :NERDTree<CR>
set relativenumber
set complete=.,w,b,u,t,i,kspell
" set spell
colo dracula
syntax on
" force clear bg
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
set timeoutlen=500 ttimeoutlen=0
set noshowmode
