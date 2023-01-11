-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- NOTE: status:
-- not working: lspkind
-- TODO: LSP keybind
-- todo color
-- tabout key
return require('packer').startup(function(use)
  -- NOTE: PACKER ------------------------------------------------------------
  use 'wbthomason/packer.nvim'

  -- NOTE: SYNTAX ------------------------------------------------------------
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-ui-select.nvim'

  -- NOTE: THEME -------------------------------------------------------------
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons', },
    tag = 'nightly' }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
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
  }
  use 'mfussenegger/nvim-dap'
  use {
    'saecki/crates.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  }

  use {
    'Lilja/zellij.nvim',
    config = function()
        require('zellij').setup({})
    end
  }
  use 'tpope/vim-fugitive'
  use {
    "kylechui/nvim-surround",
    tag = "*",
    config = function()
      require("nvim-surround").setup()
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('todo-comments').setup ({
        signs = false
      })
    end
  }
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  }
  use 'abecodes/tabout.nvim'
  -- LOCALE
  use 'rlue/vim-barbaric'

  use {
    "danymat/neogen",
    config = function()
        require('neogen').setup({ snippet_engine = 'luasnip' })
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  }

  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  }

  use 'mattn/emmet-vim'
  use 'onsails/lspkind.nvim'
  use 'j-hui/fidget.nvim'
  use 'simrat39/symbols-outline.nvim'
  use 'rcarriga/nvim-notify'
  use 'stevearc/dressing.nvim'
end)
