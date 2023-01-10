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
require('telescope').load_extension('fzf')
require('telescope').load_extension('gh')
require('telescope').load_extension('luasnip')
require('telescope').load_extension('emoji')
require('telescope').load_extension('ui-select')
