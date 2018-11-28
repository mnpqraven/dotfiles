" Basic settings
set encoding=utf-8
scriptencoding utf-8
set is
set nocompatible
set number
set showcmd

" indentation in vim
set tabstop=4
set shiftwidth=4
set foldcolumn=1
set textwidth=80
set colorcolumn=+1
set linespace=0
set history=1000
set showbreak=↪\
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set smartindent

" Vundle
" to install the plugins use :PluginInstall in vim
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

" plugin settings
let g:ctrlp_show_hidden = 1
noremap <F6> :CtrlPClearCache<CR>
noremap <F7> :CtrlPClearAllCaches<CR>
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
nmap G Gzz
" smart vertical mapping
noremap <up> ddkP
noremap <down> ddp

" scroll wheel
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <A-y>

" workaround to get vim getting Alt responses
let c='a'
while c <= 'z'
exec "set <A-".c.">=\e".c
exec "imap \e".c." <A-".c.">"
let c = nr2char(1+char2nr(c))
endw

" leader bindings
set timeout ttimeoutlen=50
noremap <space> <nop>
let mapleader=" "
nnoremap <Leader>t :NERDTree<CR>
nnoremap <silent><F5> :so ~/.vimrc<CR> :%s/\s\+$//e<CR>
nnoremap <silent><Leader><Leader> :%s/\s\+$//e<CR>
nnoremap <Leader>k :tabnext<CR>
nnoremap <Leader>K :tabprevious<CR>
nnoremap <silent><Leader>n :tabnew<CR>:CtrlP<CR>

" misc bindings
noremap <A-y> <C-e>

" split resizing
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
" escapes double brackets
inoremap "<ESC> "
inoremap '<ESC> '
inoremap (<ESC> (
inoremap [<ESC> [
inoremap {<ESC> {
" auto closes brackets
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
