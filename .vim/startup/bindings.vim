noremap <C-f> :CtrlP<CR>
noremap <F6> :CtrlPClearCache<CR>
noremap <F7> :CtrlPClearAllCaches<CR>

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

" Leader keys
noremap <space> <nop>
let mapleader=" "
nnoremap <Leader>t :NERDTree<CR>
nnoremap <Leader>k :tabnext<CR>
nnoremap <Leader>K :tabprevious<CR>
nnoremap <Leader>g :GitGutterLineHighlightsToggle<CR>
nnoremap <Leader>cd :cd %:p:h<CR> :pwd<CR><left>
map <Leader>s :setlocal spell! spelllang=en_US<CR>
nnoremap <silent><Leader>n :tabnew<CR>:CtrlP<CR>
noremap <silent> <Leader>w :call ToggleWrap()<CR>zz
noremap <silent> <Leader>a :call ToggleAutoComment()<CR>zz
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
nnoremap <C-M> :bn<CR>
nnoremap <C-B> :bp<CR>

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

" split resizing
map <A-l> :res +5<CR>
map <A-n> :res -5<CR>
map <A-h> :vertical resize -5<CR>
map <A-e> :vertical resize +5<CR>

" Press F8 to toggle highlighting on/off, and show current value.
noremap <F8> :set hlsearch! hlsearch?<CR>

nmap G Gzz
" vnoremap <C-c> "*Y :let @+=@*<CR>
inoremap <C-z> <ESC>l"+pi
nnoremap <C-z> "+P
vnoremap <C-c> "+y

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

" misc bindings
noremap <A-y> <C-e>
nnoremap <silent><F5> :so ~/.vimrc<CR> :%s/\s\+$//e<CR> :echo ".vimrc reloaded"<CR>2<left>
nnoremap <silent><F3> :e %<CR> :echo "current file reloaded"<CR><C-o>

" auto bracket
" escapes double brackets
inoremap "<ESC> "
inoremap '<ESC> '
inoremap (<ESC> (
inoremap [<ESC> [
inoremap {<ESC> {
inoremap ;<ESC> ;

" auto closes brackets
inoremap ;<Space> ;<Space>
inoremap ;<Space><Space> <Right>;<Space>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap () ()
inoremap (; ();
inoremap [ []<left>
inoremap [] []
inoremap { {}<left>
inoremap {} {}
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
