require("othi")
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader=" "
vim.g.maplocalleader="\\"

-- TODO: LSP keybind
-- todo color
-- tabout key
require('lazy').setup({
  -- NOTE: PACKER ------------------------------------------------------------
  'wbthomason/packer.nvim',

  -- NOTE: SYNTAX ------------------------------------------------------------
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  'nvim-telescope/telescope-ui-select.nvim',

  -- NOTE: THEME -------------------------------------------------------------
  { "catppuccin/nvim", as = "catppuccin" },
  { 'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons', },
  tag = 'nightly' },
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      -- Specific languagess
      {'simrat39/rust-tools.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-cmdline'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
    }
  },
  'mfussenegger/nvim-dap',
  {
    'saecki/crates.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  },
  {
    'Lilja/zellij.nvim',
    config = function()
        require('zellij').setup({})
    end
  },
  'tpope/vim-fugitive',
  {
    "kylechui/nvim-surround",
    config = function()
      require("nvim-surround").setup()
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  },
  {
    'folke/todo-comments.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      require('todo-comments').setup ({
        signs = false
      })
    end
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  },
  'abecodes/tabout.nvim',
  -- LOCALE
  'rlue/vim-barbaric',

  {
    "danymat/neogen",
    config = function()
        require('neogen').setup({ snippet_engine = 'luasnip' })
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
    dependencies = "nvim-treesitter/nvim-treesitter",
  },

  'mattn/emmet-vim',
  'onsails/lspkind.nvim',
  'j-hui/fidget.nvim',
  'simrat39/symbols-outline.nvim',
  'rcarriga/nvim-notify',
  'stevearc/dressing.nvim'
})
