vim.g.mapleader = " "
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


require("lazy").setup({
  "folke/which-key.nvim",
  {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lua'},
    {'L3MON4D3/LuaSnip'}, },
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  },
})

-- LSP CONFIG
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
})
lsp.setup()

-- CMP CONFIG
local cmp = require('cmp')
local cmp_config = lsp.defaults.cmp_config({
  sources = {
    { name =  'luasnip', keyword_length = 1 },
    { name = 'nvim_lsp', keyword_length = 1 },
  }, {
    { name = 'buffer' },
  },
})
cmp.setup(cmp_config)

-- LUASNIP CONFIG
local ls = require("luasnip")
local postfix = require("luasnip.extras.postfix").postfix
local f = ls.function_node

ls.add_snippets('all', {
	postfix(".val", {
	f(function(_, parent)
		return "Vec<" .. parent.snippet.env.POSTFIX_MATCH .. ">"
	end, {})})
})

