vim.g.mapleader=" "
vim.g.maplocalleader="\\"

local map = require("user.functions").map
local nmap = require("user.functions").nmap
local vmap = require("user.functions").vmap
local nnoremap = require("user.functions").nnoremap
local inoremap = require("user.functions").inoremap
local vnoremap = require("user.functions").nnoremap


map('N', 'K' )
map('n', 'gj')
map('E', 'J')
map('e', 'l')
map('k', 'nzz')
map('K', 'Nzz')
map('l', 'gk')
map('E', '$')
map('H', '0')
map('N', 'L')

map('<C-d>', '<C-d>zz')

nmap('<up>', 'ddkp')
nmap('<down>', 'ddp')
vmap('<up>', 'dkP1v')
vmap('<down>', 'dp1v')

-- tab navigation
nmap('<leader>1', '1gt')
nmap('<leader>2', '2gt')
nmap('<leader>3', '3gt')
nmap('<leader>4', '4gt')
nmap('<leader>5', '5gt')
nmap('<leader>6', '6gt')
nmap('<leader>7', '7gt')
nmap('<leader>8', '8gt')
nmap('<leader>9', '9gt')

nmap('<C-w>', '<cmd>bd<CR>')
nmap('<F8>', '<cmd>set hlsearch! hlsearch?<CR>')

-- Leader keys
nnoremap('<Leader>k', '<cmd>tabnext<CR>' )
nnoremap('<Leader>K', '<cmd>tabprevious<CR>' )
nnoremap('<Leader>cd', '<cmd>cd %:p:h<CR> <cmd>pwd<CR><left>' )
nnoremap('<Leader>c', '<cmd>%y+<CR>' )
nnoremap('<silent><Leader>s', '<cmd>setlocal spell! spelllang=en_US<CR><ESC>' )
nmap('z<tab>', 'zf%')

-- buffer navigation
nnoremap('<C-A-e>', '<cmd>bn<CR>')
nnoremap('<C-A-h>', '<cmd>bp<CR>')

-- split resizing
nmap('<A-l>', '<cmd>res +5<CR>')
nmap('<A-n>', '<cmd>res -5<CR>')
nmap('<A-h>', '<cmd>vertical resize -5<CR>')
nmap('<A-e>', '<cmd>vertical resize +5<CR>')

nmap('G', 'Gzz')

-- tabbingout semicolon
inoremap(';;', ':' )
inoremap(';<tab>', '<ESC>%%a;<ESC>hi' )

nnoremap('<A-y>', '<C-e>' )
nnoremap('<C-A-y>', '<C-y>' )

 -- CLIPBOARD
vim.cmd([[
inoremap <C-z> <ESC>l"+pi
nnoremap <C-z> "+P
vnoremap <C-c> "+y
]])

