local wk = require('which-key')
wk.register({
    [";"] = {
        [";"] = { ":", ":", mode = "i" },
        ["e"] = { ";<esc>a", "Escape ;", mode = "i" },
        ["n"] = { ";<esc>", "Escape ; to NORMAL", mode = "i" },
        ["o"] = { ";<esc>o", "Escape ; to new line", mode = "i" },
        ["K"] = { ";<esc>", "Esc", mode = "i" }
    }
})

wk.register({
    g = { "<cmd>G<CR>", "Open Git console" },
    h = { "<cmd>HopWord<CR>", "Hop" },
    s = {
        name = 'Show',
        t = { "<cmd>TroubleToggle<CR>", "Diagnostic" },
        s = { '<cmd>Outline<CR>', "Outline Symbols" }
    }
}, { prefix = "<leader>" })
