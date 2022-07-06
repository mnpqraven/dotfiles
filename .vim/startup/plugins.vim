" filetype off

" PLUG
call plug#begin()

Plug 'jez/vim-superman'
Plug 'lervag/vimtex'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'styled-components/vim-styled-components'
Plug 'mattn/emmet-vim'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'

" CSV
Plug 'chrisbra/csv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" THEME
Plug 'vim-airline/vim-airline'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'srcery-colors/srcery-vim'
Plug 'joshdick/onedark.vim'

" FUNCTIONALITY
Plug 'kylechui/nvim-surround'
" Plug 'tpope/vim-surround'
Plug 'numToStr/Comment.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'kyazdani42/nvim-web-devicons'

" LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'folke/trouble.nvim'

" COMPLETION
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'

" SNIPPETS
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'SirVer/ultisnips'
Plug 'rafamadriz/friendly-snippets'

" NAVIGATION
Plug 'scrooloose/nerdtree'
Plug 'phaazon/hop.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'BurntSushi/ripgrep'

call plug#end()

filetype plugin indent on

set completeopt=menuone,menu
lua require('user.cmp')
lua require('user.lsp')
lua require('user.trouble')
lua require('user.telescope')
lua require('user.treesitter')
lua require('user.nvim_surround')
lua require('user.hop')
lua require('user.luasnip')

let g:indentLine_setConceal = 0

" emmet
let g:user_emmet_settings = {
  \  'typescript' : {
    \      'extends' : 'jsx',
    \  },
  \}

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

let g:pandoc#modules#disabled = ["keyboard", "spell"]
let g:pandoc#spell#enabled = 0

let g:deoplete#enable_at_startup = 1
let g:gitgutter_override_sign_column_highlight = 0
let g:tmux_navigator_no_mappings = 1

let g:SimpylFold_docstring_preview=1

let g:python3_host_prog='/usr/bin/python3'

