local builtin = require('telescope.builtin')
local wk = require('which-key')
wk.register({
  f = {
    name = "Telescope",
    f = { builtin.find_files, "Find files" },
    w = { builtin.git_files, "Find git files" },
    g = { builtin.live_grep, "Grep" },
    b = { builtin.buffers, "Buffers" },
    p = { builtin.diagnostics, "Diagnostics" },
    t = { builtin.lsp_document_symbols, "Symbols in file" },
    e = { '<cmd>IconPickerNormal<CR>', 'Symbols and icons' },
    n = { '<cmd>Neorg<CR>', 'Neorg'}
  },
  w = {
    name = "Workspace",
    s = { builtin.lsp_workspace_symbols, "Symbols in workspace" }
  },
}, { prefix = "<leader>" })
wk.register({
  ["<C-i>"] = { '<cmd>IconPickerNormal<CR>', 'Symbols and icons' }
}, { mode = "i" })

local borderchars = {
  prompt  = { "─", "│", "─", "│", '┌', '┐', "┘", "└" },
  results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
  preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
}
local borderchars_dropdown = {
  prompt  = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
  results = { "─", "│", "─", "│", '├', '┤', "┘", "└" },
  preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
}
local title_opts = {
  prompt_title = false,
  results_title = false,
  preview_title = false,
}
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
    path_display = { "smart", "truncate" },
    borderchars = borderchars,
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
      borderchars = borderchars_dropdown,
      prompt_title = false,
      results_title = false,
      preview_title = false,
    },
    git_files = title_opts,
    find_files = title_opts,
    live_grep = title_opts,
    buffers = title_opts,
    lsp_document_symbols = title_opts,
    lsp_workspace_symbols = title_opts
  }
}
require('telescope').load_extension('ui-select')
