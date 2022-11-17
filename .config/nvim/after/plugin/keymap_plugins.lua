local crates = require('crates')
local telescope_builtin = require('telescope.builtin')
local nmap = require("user.remap").nmap
local nnoremap = require("user.remap").nnoremap
local vnoremap = require("user.remap").nnoremap

nmap('<C-\\>', '<cmd>NvimTreeToggle<CR>')
nnoremap('<leader>d', '<cmd>Neogen<CR>')
nnoremap('<F9>', ':VimtexStop<CR><cmd>VimtexClean<CR>')

-- NOTE: VCS
nnoremap('<leader>gg', '<cmd>DiffviewOpen<CR>')
nnoremap('<leader>gc', '<cmd>DiffviewClose<CR>')
nnoremap('<leader>gt', '<cmd>DiffviewToggleFiles<CR>')


-- NOTE: TMUX NAVIGATION
nnoremap('<C-H>', '<cmd>TmuxNavigateLeft<CR>')
nnoremap('<C-N>', '<cmd>TmuxNavigateDown<CR>')
nnoremap('<C-L>', '<cmd>TmuxNavigateUp<CR>')
nnoremap('<C-E>', '<cmd>TmuxNavigateRight<CR>')

-- NOTE: TROUBLE
nnoremap('gR', '<cmd>TroubleToggle workspace_diagnostics<CR>')
nnoremap('<leader>xx', '<cmd>TroubleToggle<CR>')
nnoremap('<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<CR>')
nnoremap('<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>')
nnoremap('<leader>xf', '<cmd>TroubleToggle quickfix<CR>')
nnoremap('<leader>xl', '<cmd>TroubleToggle loclist<CR>')

-- INFO: CRATES
nnoremap('<leader>cu', crates.update_crate)
vnoremap('<leader>cu', crates.update_crates)
nnoremap('<leader>ca', crates.update_all_crates)
nnoremap('<leader>cU', crates.upgrade_crate)
vnoremap('<leader>cU', crates.upgrade_crates)
nnoremap('<leader>cA', crates.upgrade_all_crates)

-- INFO: TELESCOPE
nnoremap('<leader>ff', telescope_builtin.find_files)
nnoremap('<leader>fg', telescope_builtin.live_grep)
nnoremap('<leader>fb', telescope_builtin.buffers)
nnoremap('<leader>fh', telescope_builtin.help_tags)
nnoremap('<leader>fp', telescope_builtin.diagnostics)
nnoremap('<leader>ft', telescope_builtin.treesitter)
nnoremap('<leader>fd', telescope_builtin.lsp_definitions)
nnoremap('<leader>fr', telescope_builtin.lsp_references)
nnoremap('<leader>fi', telescope_builtin.lsp_implementations)
nnoremap('<leader>fn', telescope_builtin.lsp_document_symbols)
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.rs", "Cargo.toml", "Cargo.lock" },
  callback = function () nnoremap('<leader>cr', '<cmd>RustRunnables<cr>') end
})
nnoremap('<leader><leader>', vim.diagnostic.open_float)

-- INFO: HOP
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>", {})
vim.api.nvim_set_keymap('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>", {})
nnoremap('<C-Q>', '<cmd>HopAnywhereCurrentLine<cr>')
nnoremap('<Leader>l', '<cmd>HopWordBC<cr>')
nnoremap('<Leader>L', '<cmd>HopLineBC<cr>')
nnoremap('<Leader>H', '<cmd>HopLine<cr>')
nnoremap('<Leader>hh', '<cmd>HopVertical<cr>')
nnoremap('<Leader>hw', '<cmd>HopWord<cr>')
nnoremap('<Leader>E', '<cmd>HopPattern<cr>')
nnoremap('<Leader>n', '<cmd>HopWordAC<cr>')
nnoremap('<Leader>N', '<cmd>HopLineAC<cr>')

-- TODO:
vim.cmd([[
" CSV
"autocmd filetype csv noremap <silent>H :<C-U>call csv#MoveCol(-1, line("."))<CR>:<C-U>call csv#MoveCol(-1, line("."))<CR>l
autocmd filetype csv noremap <silent>H :<C-U>call csv#MoveCol(-1, line("."))<CR>:<C-U>call csv#MoveCol(-1, line("."))<CR>b:<C-U>call csv#MoveCol(1, line("."))<CR>
":call csv#MoveCol(-1, line("."), 1)<CR>
autocmd filetype csv noremap <silent>E :<C-U>call csv#MoveCol(1, line("."))<CR>
autocmd filetype csv noremap <silent>N :<C-U>call csv#MoveCol(0, line(".")+v:count1)<CR>
autocmd filetype csv noremap <silent>L :<C-U>call csv#MoveCol(0, line(".")-v:count1)<CR>
]])

