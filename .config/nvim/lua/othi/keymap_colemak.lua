local map = require("user.remap").map
local nmap = require("user.remap").nmap
local vmap = require("user.remap").vmap
local nnoremap = require("user.remap").nnoremap
local inoremap = require("user.remap").inoremap
local vnoremap = require("user.remap").nnoremap

vim.cmd([[
nnoremap <silent><F5> :so $HOME/.config/nvim/init.vim<CR> :%s/\s\+$//e<CR> :echo "NVim reloaded"<CR>2<left>
nnoremap <silent><F3> :e %<CR> :echo "current file reloaded"<CR><C-o>
" smart searching selected text in visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
]])

-- leader key
vim.g.mapleader=" "
vim.g.maplocalleader="\\"
-- disables space key moving cursor
map('<space>', '<nop>')

map('N', 'K')
map('n', 'gj')
map('E', 'J')
map('e', 'l')
map('k', 'nzz')
map('K', 'Nzz')
map('l', 'gk')
map('E', '$')
map('H', '0')
map('L', 'H')
map('N', 'L')
map('<C-d>', '<C-d>zz')
map('<C-d>', '<C-d>zz')
map('<leader><leader>', 'za')

-- smart vertical mapping/dragging
nmap('<up>', 'ddkP')
nmap('<down>', 'ddp')
vmap('<up>', 'dkP1v')
vmap('<down>', 'dp1v')

-- tab navigation
nnoremap('<leader>1', '1gt')
nnoremap('<leader>2', '2gt')
nnoremap('<leader>3', '3gt')
nnoremap('<leader>4', '4gt')
nnoremap('<leader>5', '5gt')
nnoremap('<leader>6', '6gt')
nnoremap('<leader>7', '7gt')
nnoremap('<leader>8', '8gt')
nnoremap('<leader>9', '9gt')

map('<C-w>', '<cmd>bd<CR>')
map('<F8>', '<cmd>set hlsearch! hlsearch?<CR>')

-- Leader keys
nnoremap('<Leader>k', '<cmd>tabnext<CR>')
nnoremap('<Leader>K', '<cmd>tabprevious<CR>')
nnoremap('<Leader>cd', '<cmd>cd %:p:h<CR> <cmd>pwd<CR><left>')
nnoremap('<Leader>c', '<cmd>%y+<CR>')
nnoremap('<silent><Leader>s', '<cmd>setlocal spell! spelllang=en_US<CR><ESC>')
map('z<tab>', 'zf%')

-- buffer navigation
nnoremap('<C-A-e>', '<cmd>bn<CR>')
nnoremap('<C-A-h>', '<cmd>bp<CR>')

-- split resizing
map('<A-l>', '<cmd>res +5<CR>')
map('<A-n>', '<cmd>res -5<CR>')
map('<A-h>', '<cmd>vertical resize -5<CR>')
map('<A-e>', '<cmd>vertical resize +5<CR>')

nmap('G', 'Gzz')

-- tabbingout semicolon
inoremap(';;', ':')
inoremap(';<tab>', '<ESC>%%a;<ESC>hi')

nnoremap('<A-y>', '<C-e>')
nnoremap('<C-A-y>', '<C-y>')

 -- CLIPBOARD
vim.cmd([[
inoremap <C-z> <ESC>l"+pi
nnoremap <C-z> "+P
vnoremap <C-c> "+y
]])
