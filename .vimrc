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
Plugin 'whiteinge/diffconflicts'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

" plugin settings
let g:ctrlp_show_hidden = 1
noremap <F6> :CtrlPClearCache<CR>
noremap <F7> :CtrlPClearAllCaches<CR>
let g:gitgutter_override_sign_column_highlight = 0

" Colemak remapping
noremap J E
noremap j e
noremap N K
noremap n gj
noremap E J
noremap e l
noremap K Nzz
noremap k nzz
noremap l gk
noremap E $
noremap H 0
nnoremap <CR><CR> :
noremap <C-H> <C-W>h
noremap <C-N> <C-W>j
noremap <C-E> <C-W>l
noremap <C-L> <C-W>k
nmap G Gzz
" vnoremap <C-R> :'<,'>s/
" smart vertical mapping/dragging
nnoremap <up> ddkP
nnoremap <down> ddp
vnoremap <up> dkP1v
vnoremap <down> dp1v

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
" set timeout ttimeoutlen=50
noremap <space> <nop>
let mapleader=" "
nnoremap <Leader>t :NERDTree<CR>
nnoremap <silent><Leader><Leader> :%s/\s\+$//e<CR>
nnoremap <Leader>k :tabnext<CR>
nnoremap <Leader>K :tabprevious<CR>
nnoremap <Leader>g :GitGutterLineHighlightsToggle<CR>
nnoremap <silent><Leader>n :tabnew<CR>:CtrlP<CR>
noremap <silent> <Leader>w :call ToggleWrap()<CR>zz

" misc bindings
noremap <A-y> <C-e>
nnoremap <silent><F5> :so ~/.vimrc<CR> :%s/\s\+$//e<CR>

let g:gitgutter_override_sign_column_highlight = 0
highlight SignColumn ctermbg=15


" NERDTree keys
noremap <C-\> :NERDTreeToggle<CR>

" split resizing
map <A-l> :res +5<CR>
map <A-n> :res -5<CR>
map <A-h> :vertical resize -5<CR>
map <A-e> :vertical resize +5<CR>
set relativenumber
set complete=.,w,b,u,t,i,kspell

function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
  endif
endfunction

" colosceme
colo dracula
syntax on
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
set timeoutlen=1000 ttimeoutlen=0
set updatetime=100
set noshowmode
