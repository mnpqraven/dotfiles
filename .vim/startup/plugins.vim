" Vundle
" to install the plugins use :PluginInstall in vim
filetype off

" PLUG
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jez/vim-superman'
Plug 'lervag/vimtex'
Plug 'chrisbra/csv.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'styled-components/vim-styled-components'
Plug 'mattn/emmet-vim'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mnpqraven/othi-airline-themes'

" LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

" COMPLETION
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'

" snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'SirVer/ultisnips'

Plug 'rafamadriz/friendly-snippets'


call plug#end()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set completeopt=menuone,menu,noselect
lua require('user.cmp')

" coc.nvim
" install the tsserver
" :CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css coc-emmet

" emmet
let g:user_emmet_settings = {
  \  'typescript' : {
    \      'extends' : 'jsx',
    \  },
  \}

"CtrlP keys
  let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
    \ 'PrtSelectMove("k")':   ['<c-l>', '<up>'],
    \ 'PrtCurEnd()':          ['<c-4>'],
    \ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
    \ 'PrtCurRight()':        ['<c-e>', '<right>'],
    \ 'PrtHistory(-1)':       ['<c-b>'],
    \ 'PrtHistory(1)':        ['<c-w>'],
    \ 'ToggleType(-1)':       ['<c-q>', '<c-down>'],
    \ }

" csv.vim
"let g:csv_delim_test = ',|; '
let g:csv_delim_test = ';'
let g:csv_highlight_column = 'y'

"let g:no_csv_maps = 1

let g:csv_nomap_e = 1
let g:csv_nomap_h = 1
let g:csv_nomap_l = 1
let g:csv_nomap_j = 1
let g:csv_nomap_k = 1

autocmd BufNewFile,BufRead fugitive://* set bufhidden=delete
let g:tex_flavor = 'xelatex'
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_compiler_latexmk_engine = {'xelatex': '-pdf'}
let g:vimtex_syntax_conceal_disabled=1
set conceallevel=0

let g:pandoc#modules#disabled = ["keyboard", "spell"]
let g:pandoc#spell#enabled = 0

let g:deoplete#enable_at_startup = 1
let g:gitgutter_override_sign_column_highlight = 0
let g:tmux_navigator_no_mappings = 1

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

let g:ale_fixers = {
            \ '*': ['remove_trailing_lines','trim_whitespace'],
            \ 'javascript': ['importjs','prettier'],
            \}
let g:ale_fix_on_save = 1

let g:SimpylFold_docstring_preview=1

let g:python3_host_prog='/usr/bin/python3'

