local wk = require('which-key')
wk.register({
  [";"] = {
    [";"] = { ":", ":", mode = "i" },
    ["e"] = { ";<esc>a", "Escape ;", mode = "i" },
    ["o"] = { ";<esc>o", "Escape ; to new line", mode = "i" },
    ["K"] = { ";<esc>", "Esc", mode = "i" }
  }
})

wk.register({
  g = { "<cmd>G<CR>", "Open Git console"}
}, { prefix = "<leader>" })
