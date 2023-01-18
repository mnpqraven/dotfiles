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

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- TODO: tabout key
require('lazy').setup({
  -- NOTE: SYNTAX ----------------------------------------------------------
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  'nvim-telescope/telescope-ui-select.nvim',

  -- NOTE: THEME -----------------------------------------------------------
  { "catppuccin/nvim", as = "catppuccin" },
  'rebelot/kanagawa.nvim',
  'kvrohit/mellow.nvim',
  'navarasu/onedark.nvim',
  { 'ramojus/mellifluous.nvim',
    dependencies = { 'rktjmp/lush.nvim' },
  },
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
  'nvim-treesitter/nvim-treesitter-textobjects',
  'nvim-treesitter/playground',
  'nvim-treesitter/nvim-treesitter-context',
  'lukas-reineke/indent-blankline.nvim',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  {
    'b0o/incline.nvim',
    dependencies = 'lewis6991/gitsigns.nvim'
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      -- Specific languagess
      { 'simrat39/rust-tools.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-cmdline' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      -- Snippet Collection (Optional)
      -- { 'rafamadriz/friendly-snippets' },
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

  'kylechui/nvim-surround',
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
      require('todo-comments').setup()
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
  'ray-x/lsp_signature.nvim',
  {
    'folke/trouble.nvim',
    config = function()
      require("trouble").setup()
    end,
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  'j-hui/fidget.nvim',
  { 'lewis6991/gitsigns.nvim', tag = 'release' },
  'simrat39/symbols-outline.nvim',
  'rcarriga/nvim-notify',
  'stevearc/dressing.nvim',
  {
    'themaxmarchuk/tailwindcss-colors.nvim',
    module = "tailwindcss-colors",
    -- run the setup function after plugin is loaded
    config = function()
      -- pass config options here (or nothing to use defaults)
      require("tailwindcss-colors").setup()
    end
  },
  'norcalli/nvim-colorizer.lua',
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 0
      require("which-key").setup({
        plugins = {
          spelling = { enabled = true }
        }
      })
    end,
  },
  'folke/twilight.nvim',
  {
    'ziontee113/icon-picker.nvim',
    config = function()
      require("icon-picker").setup {
        disable_legacy_commands = true
      }
    end
  },
  'RRethy/vim-illuminate',
  {
    "nvim-neorg/neorg",
    after = 'nvim-treesitter/nvim-treesitter',
    build = ":Neorg sync-parsers",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { 'lukas-reineke/headlines.nvim' }
    },
  }
})
