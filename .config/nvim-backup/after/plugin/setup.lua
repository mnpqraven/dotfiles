-- INFO: GENERAL LOADERS
require('trouble').setup {}
require('nvim-autopairs').setup {}
require('indent_blankline').setup {
  show_current_context = true,
  show_current_context_start = true,
}
-- FIX: bad one
require 'regexplainer'.setup {
  auto = true,
  filetypes = { 'sh' }
}
require('numbers').setup {
  excluded_filetypes = {
    'nerdtree',
    'NvimTree',
    'unite',
    'toggleterm',
    'Outline'
  }
}
require('neogen').setup({ snippet_engine = "luasnip" })
require('colorizer').setup { '*' }
require('Comment').setup {}
require('todo-comments').setup {
  signs = false,
}
require('bookmarks').setup {}
require('gitsigns').setup {
  yadm = {
    enable = true
  }
}
require('tabout').setup {
  tabkey = '<c-space>',
  backwards_tabkey = '<c-s-space>'
}
require('onedark').load()
require('dressing').setup {}
require('notify').setup {
  background_colour = "#000000",
}
require "fidget".setup {
  timer = {
    spinner_rate = 60,
    fidget_decay = 1000
  },
  window = {
    blend = 0
  }
}
require("symbols-outline").setup {
  keymaps = {
    unfold = "e"
  },
  symbols = {
    Class = {icon = "ﴯ", hl = "TSType"},
    Enum = {icon = "", hl = "TSType"},
    EnumMember = {icon = "", hl = "TSField"},
    Struct = {icon = "פּ", hl = "TSType"},
  }
}