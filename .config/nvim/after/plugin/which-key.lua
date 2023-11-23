local wk = require('which-key')
local hop = require('hop')
local directions = require('hop.hint').HintDirection

wk.register({
    [";"] = {
        [";"] = { ":", ":", mode = "i" },
        ["e"] = { ";<esc>a", "Escape ;", mode = "i" },
        ["n"] = { ";<esc>", "Escape ; to NORMAL", mode = "i" },
        ["o"] = { ";<esc>o", "Escape ; to new line", mode = "i" },
        ["K"] = { ";<esc>", "Esc", mode = "i" }
    },
})

wk.register({
    h = { "<cmd>HopWord<CR>", "Hop" },
    g = { "<cmd>G<CR>", "Open Git console" }
}, { prefix = "<leader>" })
