" DISCLAIMER: Alt bindings don't work with vim (technically it can but it fucks up macros) so no alt key bindings until powerline supports neovim or i find a just as good status line

" Basic settings
set encoding=utf-8
scriptencoding utf-8
set is
set nocompatible
set number
set showcmd
set splitbelow splitright
autocmd BufWritePre * %s/\s\+$//e
set path+=**
set wildmenu
set wildmode=longest,list,full
set cursorcolumn
set cursorline

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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jez/vim-superman'
if has('nvim')
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
endif
call vundle#end()
filetype plugin indent on

" VIM-AIRLINE CONFIG ------------------------------------------------------------
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#branch#sha1_len = 6
"let g:airline#extensions#tmuxline#enabled = 1
" -------------------------------------------------------------------------------
" indentation in vim
set tabstop=4
set shiftwidth=4
set foldcolumn=1
"set textwidth=80
"set colorcolumn=+1
set linespace=0
set history=1000
set showbreak=↪\
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set smartindent

" plugin settings
let g:ctrlp_show_hidden = 1
noremap <C-f> :CtrlP<CR>
noremap <F6> :CtrlPClearCache<CR>
noremap <F7> :CtrlPClearAllCaches<CR>
let g:gitgutter_override_sign_column_highlight = 0

" Press F4 to toggle highlighting on/off, and show current value.
noremap <F8> :set hlsearch! hlsearch?<CR>

" tmux navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-H> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-N> :TmuxNavigateDown<CR>
nnoremap <silent> <C-L> :TmuxNavigateUp<CR>
nnoremap <silent> <C-E> :TmuxNavigateRight<CR>
nnoremap <silent> <C-K> :TmuxNavigatePrevious<CR>


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
noremap <C-d> <C-d>zz
noremap <C-d> <C-d>zz

" legacy panes navigation, use this if the above tmux navigations are not used
" noremap <C-H> <C-W>h
" noremap <C-N> <C-W>j
" noremap <C-E> <C-W>l
" noremap <C-L> <C-W>k
nmap G Gzz
" vnoremap <C-c> "*Y :let @+=@*<CR>
inoremap <C-z> <ESC>l"+pi
nnoremap <C-z> "+P
vnoremap <C-c> "+y

" smart vertical mapping/dragging
nnoremap <up> ddkP
nnoremap <down> ddp
vnoremap <up> dkP1v
vnoremap <down> dp1v

" scroll wheel
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <A-y>
" BUGGGGGGGGGGGGGGGGGGGGGGGG, only works in nvim
" workaround to get vim getting Alt responses
" let c='a'
" while c <= 'z'
" 	exec "set <A-".c.">=\e".c
" 	exec "imap \e".c." <A-".c.">"
" 	let c = nr2char(1+char2nr(c))
" endw

" leader bindings
" set timeout ttimeoutlen=50
noremap <space> <nop>
let mapleader=" "
nnoremap <Leader>t :NERDTree<CR>
nnoremap <Leader>k :tabnext<CR>
nnoremap <Leader>K :tabprevious<CR>
nnoremap <Leader>g :GitGutterLineHighlightsToggle<CR>
map <Leader>s :setlocal spell! spelllang=en_US<CR>
nnoremap <silent><Leader>n :tabnew<CR>:CtrlP<CR>
noremap <silent> <Leader>w :call ToggleWrap()<CR>zz

" chrome like tab navigation
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

" misc bindings
noremap <A-y> <C-e>
nnoremap <silent><F5> :so ~/.vimrc<CR> :%s/\s\+$//e<CR> :echo "vimrc reloaded"<CR>

"let g:gitgutter_override_sign_column_highlight = 0
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

function! ToggleWrap()
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

" coloscheme, change the color in the Palette section
colo othi
syntax on
hi Normal ctermbg=none

command! MakeTags !ctags -R .
command! Diff Gdiff

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
inoremap (; ();
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

if !has('nvim')
	set rtp+=/home/othi/.local/lib/python3.7/site-packages/powerline/bindings/vim/
	set laststatus=2
	set t_Co=256
endif
set timeoutlen=500 ttimeoutlen=0
set updatetime=100
set noshowmode
