local wk = require('which-key')
wk.register({
  d = { function() require('neogen').generate() end, "Create documentation" }
}, { prefix = "<leader>" })
