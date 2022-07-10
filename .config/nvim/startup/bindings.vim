noremap <space> <nop>
let mapleader=" "
let maplocalleader="\\"

noremap <F9> :VimtexStop<CR>:VimtexClean<CR>
noremap <C-w> :bd<CR>
noremap <F8> :set hlsearch! hlsearch?<CR>

" tmux navigator
nnoremap <silent> <C-H> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-N> :TmuxNavigateDown<CR>
nnoremap <silent> <C-L> :TmuxNavigateUp<CR>
nnoremap <silent> <C-E> :TmuxNavigateRight<CR>

" smart vertical mapping/dragging
nnoremap <up> ddkP
nnoremap <down> ddp
vnoremap <up> dkP1v
vnoremap <down> dp1v

" Leader keys
nnoremap <Leader>k :tabnext<CR>
nnoremap <Leader>K :tabprevious<CR>
nnoremap <Leader>g :GitGutterLineHighlightsToggle<CR>
nnoremap <Leader>cd :cd %:p:h<CR> :pwd<CR><left>
nnoremap <Leader>c :%y+<CR>
nnoremap <silent><Leader>s :setlocal spell! spelllang=en_US<CR><ESC>
" nnoremap <silent><Leader>n :tabnew<CR>:CtrlP<CR>
noremap <silent> <Leader>w :call ToggleWrap()<CR>zz
noremap <silent> <Leader>a :call ToggleAutoComment()<CR>zz
noremap z<tab> zf%

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
" noremap J E
" noremap j e
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
nnoremap <silent><F5> :so $HOME/.config/nvim/init.vim<CR> :%s/\s\+$//e<CR> :echo "NVim reloaded"<CR>2<left>
nnoremap <silent><F3> :e %<CR> :echo "current file reloaded"<CR><C-o>
" smart searching selected text in visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" smarter semicolon
inoremap ;; :
inoremap ;<Space> ;<Space>
inoremap ;<Space><Space> <ESC>Ea;<Space>

" PLUGIN KEYS
" NERDTree keys
noremap <C-\> :NvimTreeToggle<CR>
" RANGER
nnoremap <leader>rr :RnvimrToggle<CR>

nnoremap <leader>d <cmd>Neogen<CR>
" TROUBLE
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xf <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle workspace_diagnostics<cr>
" HOP
nnoremap <silent> <C-Q> <cmd>HopAnywhereCurrentLine<cr>
nnoremap <Leader>l <cmd>HopWordBC<cr>
nnoremap <Leader>L <cmd>HopLineBC<cr>
nnoremap <Leader>H <cmd>HopLine<cr>
nnoremap <Leader>hh <cmd>HopVertical<cr>
nnoremap <Leader>hw <cmd>HopWord<cr>
nnoremap <Leader>E <cmd>HopPattern<cr>
nnoremap <Leader>n <cmd>HopWordAC<cr>
nnoremap <Leader>N <cmd>HopLineAC<cr>
nnoremap f :lua require'hop'.hint_char1({direction = require'hop.hint'.HintDirection.AFTER_CURSOR,current_line_only = true})<cr>
nnoremap F :lua require'hop'.hint_char1({direction = require'hop.hint'.HintDirection.BEFORE_CURSOR,current_line_only = true})<cr>
nnoremap t :lua require'hop'.hint_char1({direction = require'hop.hint'.HintDirection.AFTER_CURSOR,current_line_only = true,hint_offset = -1})<cr>
nnoremap T :lua require'hop'.hint_char1({direction = require'hop.hint'.HintDirection.BEFORE_CURSOR,current_line_only = true,hint_offset = -1})<cr>
" TELESCOPE
" Find files using Telescope command-line sugar.
nnoremap <C-P> <cmd>Telescope find_files<cr>
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fp <cmd>lua require('telescope.builtin').diagnostics()<cr>
nnoremap <leader>ft <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>fd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>fr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>fi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>
nnoremap <leader>fn <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>

"CSV
"autocmd filetype csv noremap <silent>H :<C-U>call csv#MoveCol(-1, line("."))<CR>:<C-U>call csv#MoveCol(-1, line("."))<CR>l
autocmd filetype csv noremap <silent>H :<C-U>call csv#MoveCol(-1, line("."))<CR>:<C-U>call csv#MoveCol(-1, line("."))<CR>b:<C-U>call csv#MoveCol(1, line("."))<CR>
":call csv#MoveCol(-1, line("."), 1)<CR>
autocmd filetype csv noremap <silent>E :<C-U>call csv#MoveCol(1, line("."))<CR>
autocmd filetype csv noremap <silent>N :<C-U>call csv#MoveCol(0, line(".")+v:count1)<CR>
autocmd filetype csv noremap <silent>L :<C-U>call csv#MoveCol(0, line(".")-v:count1)<CR>

" ALL OF THESE ARE NO LONGER NEEDED, USE LUASNIP FROM NOW ON
" " markdown
" autocmd Filetype md,markdown,rmd,Rmd map <leader>- i---<CR>title:<CR>author:<CR>output: pdf_document<CR>---<ESC>?title<CR>A<space>
" autocmd Filetype md,markdown,rmd,Rmd,tex map <leader>b i\
" autocmd Filetype md,markdown,rmd,Rmd map <leader>q i```<CR><CR>```<ESC>lI
" autocmd Filetype md,markdown,rmd,Rmd noremap <leader>c I\centerline{<CR>}<ESC>O
" autocmd Filetype md,markdown,rmd,Rmd noremap <leader>i I\includegraphics[width=1\textwidth]{}<ESC>i
"
" " LaTeX
" autocmd Filetype tex noremap <leader>st i\section{}<ESC>i
" autocmd Filetype tex noremap <leader>ss i\subsection{}<ESC>i
" autocmd Filetype tex noremap <leader>bb i\begin{}<ESC>o\end{}<ESC>k$i
" autocmd Filetype tex noremap <leader>lt i{\LaTeX}<ESC>A
" autocmd Filetype tex noremap <leader>cw a\codeword{}<ESC>i
" autocmd Filetype tex noremap \\ A<space>\\<CR>
"
" " html
" autocmd Filetype html inoremap ,br <br><ESC>o
" autocmd Filetype html inoremap ,cc <!-- --><ESC>F<space>s
