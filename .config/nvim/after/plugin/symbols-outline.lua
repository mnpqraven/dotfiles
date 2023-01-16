local wk = require('which-key')
require('symbols-outline').setup({
  keymaps = {
    unfold = "e"
  },
  symbols = {
    Class = {icon = "ﴯ", hl = "TSType"},
    Enum = {icon = "", hl = "TSType"},
    EnumMember = {icon = "", hl = "TSField"},
    Struct = {icon = "פּ", hl = "TSType"},
  }
})
