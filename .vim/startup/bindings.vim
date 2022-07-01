noremap <C-f> :CtrlP<CR>
noremap <F6> :CtrlPClearCache<CR>
noremap <F7> :CtrlPClearAllCaches<CR>
noremap <F9> :VimtexStop<CR>:VimtexClean<CR>
noremap <C-w> :bd<CR>
" Press F8 to toggle highlighting on/off, and show current value.
noremap <F8> :set hlsearch! hlsearch?<CR>

" tmux navigator
nnoremap <silent> <C-H> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-N> :TmuxNavigateDown<CR>
nnoremap <silent> <C-L> :TmuxNavigateUp<CR>
nnoremap <silent> <C-E> :TmuxNavigateRight<CR>
nnoremap <silent> <C-K> :TmuxNavigatePrevious<CR>

" smart vertical mapping/dragging
nnoremap <up> ddkP
nnoremap <down> ddp
vnoremap <up> dkP1v
vnoremap <down> dp1v

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Leader keys
noremap <space> <nop>
let mapleader=" "
let maplocalleader="\\"
nnoremap <Leader>cl :WhatColumn!<CR>
nnoremap <Leader>t :NERDTree<CR>
nnoremap <Leader>k :tabnext<CR>
nnoremap <Leader>K :tabprevious<CR>
nnoremap <Leader>g :GitGutterLineHighlightsToggle<CR>
nnoremap <Leader>cd :cd %:p:h<CR> :pwd<CR><left>
nnoremap <Leader>c :%y+<CR>
nnoremap <silent><Leader>s :setlocal spell! spelllang=en_US<CR><ESC>
nnoremap <silent><Leader>n :tabnew<CR>:CtrlP<CR>
noremap <silent> <Leader>w :call ToggleWrap()<CR>zz
noremap <silent> <Leader>a :call ToggleAutoComment()<CR>zz
noremap z<tab> zf%
" NERDTree keys
noremap <C-\> :NERDTreeToggle<CR>
let NERDTreeMenuDown='n'
let NERDTreeMenuUp='l'

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

" buffer navigation
nnoremap <C-A-e> :bn<CR>
nnoremap <C-A-h> :bp<CR>

" Colemak remapping
noremap J E
noremap j e
noremap N K
noremap n gj
noremap E J
noremap e l
noremap k nzz
noremap K Nzz
noremap l gk
noremap E $
noremap H 0
noremap L H
noremap N L
noremap <C-d> <C-d>zz
noremap <C-d> <C-d>zz
noremap <leader><leader> za

" split resizing
map <A-l> :res +5<CR>
map <A-n> :res -5<CR>
map <A-h> :vertical resize -5<CR>
map <A-e> :vertical resize +5<CR>

nmap G Gzz
" vnoremap <C-c> "*Y :let @+=@*<CR>
inoremap <C-z> <ESC>l"+pi
nnoremap <C-z> "+P
vnoremap <C-c> "+y

" scroll wheel
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <A-y>

" misc bindings
noremap <A-y> <C-e>
autocmd Filetype rmd map <silent><F9> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
":echo<space>@%"rendered"<CR>
nnoremap <silent><F5> :so ~/.vimrc<CR> :%s/\s\+$//e<CR> :echo ".vimrc reloaded"<CR>2<left>
nnoremap <silent><F3> :e %<CR> :echo "current file reloaded"<CR><C-o>
" smart searching selected text in visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" smarter semicolon
inoremap ;; :
inoremap ;<Space> ;<Space>
inoremap ;<Space><Space> <ESC>Ea;<Space>

" auto closes brackets
inoremap " ""<left>
inoremap ' ''<left>

inoremap ( ()<left>
inoremap () ()
inoremap (; ();<left><left>

inoremap [ []<left>
inoremap [] []
inoremap [; [];<left>

inoremap { {}<left>
inoremap {} {}
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"CSV
"autocmd filetype csv noremap <silent>H :<C-U>call csv#MoveCol(-1, line("."))<CR>:<C-U>call csv#MoveCol(-1, line("."))<CR>l
autocmd filetype csv noremap <silent>H :<C-U>call csv#MoveCol(-1, line("."))<CR>:<C-U>call csv#MoveCol(-1, line("."))<CR>b:<C-U>call csv#MoveCol(1, line("."))<CR>
":call csv#MoveCol(-1, line("."), 1)<CR>
autocmd filetype csv noremap <silent>E :<C-U>call csv#MoveCol(1, line("."))<CR>
autocmd filetype csv noremap <silent>N :<C-U>call csv#MoveCol(0, line(".")+v:count1)<CR>
autocmd filetype csv noremap <silent>L :<C-U>call csv#MoveCol(0, line(".")-v:count1)<CR>

" markdown
autocmd Filetype md,markdown,rmd,Rmd map <leader>- i---<CR>title:<CR>author:<CR>output: pdf_document<CR>---<ESC>?title<CR>A<space>
autocmd Filetype md,markdown,rmd,Rmd,tex map <leader>b i\
autocmd Filetype md,markdown,rmd,Rmd map <leader>q i```<CR><CR>```<ESC>lI
"autocmd Filetype md,markdown,rmd,Rmd noremap <leader>1 O#<ESC>A<space>
"autocmd Filetype md,markdown,rmd,Rmd noremap <leader>2 O##<ESC>A<space>
"autocmd Filetype md,markdown,rmd,Rmd noremap <leader>3 O###<ESC>A<space>
autocmd Filetype md,markdown,rmd,Rmd noremap <leader>l i[]()<ESC>i
autocmd Filetype md,markdown,rmd,Rmd noremap <leader>L i![]()<ESC>i
autocmd Filetype md,markdown,rmd,Rmd noremap <leader>c I\centerline{<CR>}<ESC>O
autocmd Filetype md,markdown,rmd,Rmd noremap <leader>i I\includegraphics[width=1\textwidth]{}<ESC>i

" LaTeX
autocmd Filetype tex noremap <leader>st i\section{}<ESC>i
autocmd Filetype tex noremap <leader>ss i\subsection{}<ESC>i
autocmd Filetype tex noremap <leader>bb i\begin{}<ESC>o\end{}<ESC>k$i
autocmd Filetype tex noremap <leader>lt i{\LaTeX}<ESC>A
autocmd Filetype tex noremap <leader>cw a\codeword{}<ESC>i
autocmd Filetype tex noremap \\ A<space>\\<CR>

" html
autocmd Filetype html inoremap ,br <br><ESC>o
autocmd Filetype html inoremap ,cc <!-- --><ESC>F<space>s
