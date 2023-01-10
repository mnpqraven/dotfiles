vim.g.mapleader=" "
vim.g.maplocalleader="\\"

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('', 'N', 'K' )
map('', 'n', 'gj')
map('', 'E', 'J')
map('', 'e', 'l')
map('', 'k', 'nzz')
map('', 'K', 'Nzz')
map('', 'l', 'gk')
map('', 'E', '$')
map('', 'H', '0')
map('', 'N', 'L')

map('', '<C-d>', '<C-d>zz')

map('n', '<up>', 'ddkp')
map('n', '<down>', 'ddp')
map('v', '<up>', 'dkP1v')
map('v', '<down>', 'dp1v')

-- tab navigation
map('n', '<leader>1', '1gt')
map('n', '<leader>2', '2gt')
map('n', '<leader>3', '3gt')
map('n', '<leader>4', '4gt')
map('n', '<leader>5', '5gt')
map('n', '<leader>6', '6gt')
map('n', '<leader>7', '7gt')
map('n', '<leader>8', '8gt')
map('n', '<leader>9', '9gt')

map('n','<C-w>', '<cmd>bd<CR>')
map('n', '<F8>', '<cmd>set hlsearch! hlsearch?<CR>')

-- Leader keys
map('n', '<Leader>k', '<cmd>tabnext<CR>', {noremap = true})
map('n', '<Leader>K', '<cmd>tabprevious<CR>', {noremap = true})
map('n', '<Leader>cd', '<cmd>cd %:p:h<CR> <cmd>pwd<CR><left>', {noremap = true})
map('n', '<Leader>c', '<cmd>%y+<CR>', {noremap = true})
map('n', '<silent><Leader>s', '<cmd>setlocal spell! spelllang=en_US<CR><ESC>', {noremap = true})
map('n', 'z<tab>', 'zf%')

-- buffer navigation
map('n', '<C-A-e>', '<cmd>bn<CR>', {noremap = true})
map('n', '<C-A-h>', '<cmd>bp<CR>', {noremap = true})

-- split resizing
map('n', '<A-l>', '<cmd>res +5<CR>')
map('n', '<A-n>', '<cmd>res -5<CR>')
map('n', '<A-h>', '<cmd>vertical resize -5<CR>')
map('n', '<A-e>', '<cmd>vertical resize +5<CR>')

map('n', 'G', 'Gzz')

-- tabbingout semicolon
map('i', ';;', ':', {noremap = true})
map('i', ';<tab>', '<ESC>%%a;<ESC>hi', {noremap = true})

map('n', '<A-y>', '<C-e>', {noremap = true})
map('n', '<C-A-y>', '<C-y>', {noremap = true})

 -- CLIPBOARD
vim.cmd([[
inoremap <C-z> <ESC>l"+pi
nnoremap <C-z> "+P
vnoremap <C-c> "+y
]])

