vim.cmd([[
filetype plugin indent on

set completeopt=menuone,menu

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
  let g:vimtex_view_general_viewer = 'zathura'
  let g:vimtex_compiler_latexmk_engine = {'xelatex': '-pdf'}
  let g:vimtex_syntax_conceal_disabled=1

  let g:pandoc#modules#disabled = ["keyboard", "spell"]
  let g:pandoc#spell#enabled = 0

  let g:tmux_navigator_no_mappings = 1

  let g:python3_host_prog='/usr/bin/python3'
  ]])

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use 'lervag/vimtex'
  use 'frabjous/knap'
  use 'mattn/emmet-vim'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'themaxmarchuk/tailwindcss-colors.nvim',
    module = "tailwindcss-colors",
    -- run the setup function after plugin is loaded
    config = function ()
      -- pass config options here (or nothing to use defaults)
      require("tailwindcss-colors").setup()
    end
  }
  use 'norcalli/nvim-colorizer.lua'

  -- VCS
  use 'chrisbra/csv.vim'
  use 'tpope/vim-fugitive'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use { 'lewis6991/gitsigns.nvim', tag = 'release' }

  -- THEME
  use {
    'nvim-lualine/lualine.nvim' ,
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'kyazdani42/nvim-web-devicons'
  use 'nkakouros-original/numbers.nvim'
  use 'xiyaowong/virtcolumn.nvim'
  use 'patstockwell/vim-monokai-tasty'
  use 'tomasiser/vim-code-dark'
  use 'srcery-colors/srcery-vim'
  use 'navarasu/onedark.nvim'
  use 'rebelot/kanagawa.nvim'
  use 'stevearc/dressing.nvim'
  use 'rcarriga/nvim-notify'
  use 'j-hui/fidget.nvim'

  -- FUNCTIONALITY
  use 'kylechui/nvim-surround'
  use 'numToStr/Comment.nvim'
  use 'windwp/nvim-autopairs'
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
  }
  use 'abecodes/tabout.nvim'
  use 'rlue/vim-barbaric'

  -- LSP
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use 'simrat39/rust-tools.nvim'
  use 'leafOfTree/vim-vue-plugin'
  use {
    'saecki/crates.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  }
  use 'RRethy/vim-illuminate'

  -- DEBUGGING
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  -- COMPLETION
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'folke/trouble.nvim'
  -- SNIPPETS
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use {
    "danymat/neogen",
    config = function()
      require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  }

  -- NAVIGATION
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly'
  }
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require'hop'.setup { keys = 'arsdheiqwfpgjluyozxcvbkmtn' }
    end
  }
  use 'christoomey/vim-tmux-navigator'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-github.nvim' },
    }
  }
  use {
    "benfowler/telescope-luasnip.nvim",
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use 'nvim-telescope/telescope-ui-select.nvim'
  use 'xiyaowong/telescope-emoji.nvim'
  use 'MunifTanjim/nui.nvim'
  use { 'bennypowers/nvim-regexplainer',
  config = function() require'regexplainer'.setup() end,
  requires = {
    'nvim-treesitter/nvim-treesitter',
    'MunifTanjim/nui.nvim',
  } }
  use {
    'crusj/bookmarks.nvim',
    branch = 'main',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use 'nvim-treesitter/nvim-treesitter-context'
end)
