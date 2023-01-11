local nnoremap = require('user.functions').nnoremap
local builtin = require('telescope.builtin')

nnoremap('<leader>ff', builtin.find_files)
nnoremap('<leader>fg', builtin.live_grep)
nnoremap('<leader>fb', builtin.buffers)
-- nnoremap('<leader>ft', builtin.treesitter)
nnoremap('<leader>ft', builtin.lsp_document_symbols)
nnoremap('<leader>ws', builtin.lsp_workspace_symbols)

require('telescope').setup {
  defaults = {
    wrap_results = true,
    prompt_prefix = ">> ",
    layout_config = {
      horizontal = {
        width = 0.9,
        preview_width = 0.6
      }
    },
  },
  pickers = {
    diagnostics = {
      theme = "dropdown",
      layout_config = {
        center = {
          width = 0.9,
          anchor = "S",
        }
      },
    }
  }
}
require('telescope').load_extension('ui-select')
