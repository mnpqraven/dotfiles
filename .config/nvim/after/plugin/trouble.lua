local wk = require('which-key')
wk.register({
  ["tt"] = { "<cmd>TroubleToggle<CR>", "Open diagnostic list" }
}, { prefix = "<leader>" })
