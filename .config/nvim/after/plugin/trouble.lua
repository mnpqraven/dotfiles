local wk = require('which-key')
require('trouble').setup({
  height = 7
})
wk.register({
  s = {
    name = 'Show',
    t = { "<cmd>TroubleToggle<CR>", "Diagnostic list" },
    s = { '<cmd>SymbolsOutline<CR>', "Symbols outline"}

  }
}, { prefix = "<leader>" })
