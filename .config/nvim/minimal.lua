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

-- TODO: LSP keybind
-- todo color
-- tabout key
require('lazy').setup({
  { 'kylechui/nvim-surround', tag = '*' },

})

local M = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}
    return function (lhs, rhs, opts)
        opts = vim.tbl_extend( "force", outer_opts, opts or {} )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.map      = bind("", {noremap = false})
M.noremap      = bind("", {noremap = true})

M.noremap('N', 'K')
M.noremap('n', 'gj')
M.noremap('E', 'J')
M.noremap('e', 'l')
M.noremap('k', 'nzz')
M.noremap('K', 'Nzz')
M.noremap('l', 'gk')
M.noremap('E', '$')
M.noremap('H', '0')
M.noremap('N', 'L')
