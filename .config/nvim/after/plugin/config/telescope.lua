require('telescope').setup {
  defaults = {
    prompt_prefix = ">> ",
  },
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('gh')
require('telescope').load_extension('luasnip')
require('telescope').load_extension('emoji')
require('telescope').load_extension('ui-select')
