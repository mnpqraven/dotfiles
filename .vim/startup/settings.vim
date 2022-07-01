" DISCLAIMER: Alt bindings don't work with vim (technically it can but it fucks up macros) so no alt key bindings until powerline supports neovim or i find a just as good status line

" Basic settings
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set encoding=utf-8
scriptencoding utf-8
set is
set nocompatible
set number
set nospell
set showcmd
set splitbelow splitright
set foldmethod=manual
set foldlevel=99
"
" delete whitespace
autocmd FileType rmd autocmd BufWritePre *.rmd call RRender()
autocmd BufWritePre * %s/\s\+$//e
autocmd BufNewFile,BufRead fugitive://* set bufhidden=delete
"
"  "auto save folds
"  autocmd BufWrite * mkview
"  autocmd BufRead * silent! loadview
"
" fix for cursor reseting to block after exiting nv
"highlight Cursor gui=reverse guifg=NONE guibg=NONE
set path+=**
set wildmenu
set wildmode=list:longest,full
set cursorcolumn
set cursorline
set nohlsearch
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set lbr

set shell=zsh
set relativenumber

" indentation in vim
set tabstop=4
set shiftwidth=4
set foldcolumn=1
set expandtab
"set textwidth=80
"set colorcolumn=+1
set linespace=0
set history=1000
set showbreak=↪\
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set smartindent

au BufNewFile,BufRead *.js set shiftwidth=2

au BufNewFile,BufRead *.py
    \ set foldmethod=indent tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

autocmd BufEnter *.tex set conceallevel=0

