vim.opt.encoding       = 'utf-8'
vim.opt.is             = true
vim.opt.compatible     = false
vim.opt.number         = true
vim.opt.spell          = false
vim.opt.showcmd        = true
vim.opt.cursorcolumn   = true
vim.opt.cursorline     = true
vim.opt.hlsearch       = false
vim.opt.foldmethod     = 'manual'
vim.opt.foldlevel      = 99
vim.opt.wildmenu       = true
vim.opt.shell          = "zsh"
vim.opt.relativenumber = true
vim.opt.colorcolumn    = "80"
vim.opt.textwidth      = 79
vim.opt.splitbelow     = true
vim.opt.splitright     = true

local indent = 2
vim.opt.tabstop        = indent
vim.opt.shiftwidth     = indent
vim.opt.foldcolumn     = "1"
vim.opt.expandtab      = true
vim.opt.linespace      = 0
vim.opt.history        = 1000
vim.opt.lbr            = true
vim.opt.shell          = "zsh"
vim.opt.smartindent    = true
vim.opt.conceallevel   = 2
vim.opt.concealcursor  = "c"

vim.opt.showbreak      = "↪\\"
vim.opt.list           = true
vim.opt.listchars      = {tab='» ',extends='›',precedes='‹',nbsp='·',trail='·',eol='¬'}
vim.opt.mouse          = "a"

vim.cmd([[
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
]])

-- WHITESPACE
vim.api.nvim_create_autocmd({ "BufWritePre" }, { command = "%s/\\s\\+$//e" })

-- COMPILER
vim.api.nvim_create_autocmd(
{ "BufRead", "BufNewFile" },
{ pattern = { "*.rs", "Cargo.toml", "Cargo.lock" }, command = "compiler cargo" })

vim.cmd([[
"set path+=**
"set wildmode=list:longest,full
]])
