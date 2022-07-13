---@diagnostic disable: undefined-global
-- NOTE: mirror of settings.vim
vim.cmd([[
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
]])

vim.cmd([[
autocmd BufWritePre * %s/\s\+$//e
autocmd BufNewFile,BufRead fugitive://* set bufhidden=delete
set path+=**
set wildmode=list:longest,full
autocmd FileType * setlocal formatoptions+=cro
autocmd BufEnter * setlocal formatoptions+=cro
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set smartindent
]])

vim.opt.encoding    = 'utf-8'
vim.opt.is          = true
vim.opt.compatible  = false
vim.opt.number      = true
vim.opt.spell       = false
vim.opt.showcmd     = true
vim.opt.cursorcolumn= true
vim.opt.cursorline  = true
vim.opt.hlsearch    = false
-- vim.opt.splitbelow splitright
vim.opt.foldmethod  = 'manual'
vim.opt.foldlevel   = 99
vim.opt.wildmenu    = true
vim.opt.shell       = "zsh"
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"
vim.opt.splitbelow  = true
vim.opt.splitright  = true

local indent = 4
vim.opt.tabstop     = indent
vim.opt.shiftwidth  = indent
vim.opt.foldcolumn  = "1"
vim.opt.expandtab   = true

vim.opt.linespace   = 0
vim.opt.history     = 1000
vim.opt.showbreak   = "↪\\"
vim.opt.lbr         = true
vim.opt.shell       = "zsh"

vim.opt.smartindent = true
vim.opt.conceallevel= 2
vim.opt.concealcursor= "c"
