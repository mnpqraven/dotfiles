vim.cmd([[
" in case these are used
" let g:vim_monokai_tasty_italic = 1
" let g:onedark_terminal_italics = 1
" let g:codedark_italics = 1
" let g:srcery_italic = 1
" let g:srcery_inverse = 0
" let g:srcery_bg_passthrough = 1
" let g:onedark_config = {
"     \ 'style': 'warmer',
" \}

" COLORSCHEMES
" colo vim-monokai-tasty
" codedark's bg
" let g:srcery_black = '#1e1e1e'
" au ColorScheme * highlight Normal ctermbg=NONE guibg=NONE

syntax on
]])
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen= 0
vim.opt.updatetime = 100
vim.opt.showmode   = false
vim.opt.guicursor  = "a:block"
local cursor_reset = function ()
    vim.opt.guicursor = "a:ver90-blinkon0"
end
vim.api.nvim_create_autocmd({ "VimLeave" }, {
    callback = cursor_reset
})
