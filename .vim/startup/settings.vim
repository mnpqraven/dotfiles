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

set relativenumber
set complete=.,w,b,u,t,i,kspell

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

