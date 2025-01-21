local wk = require('which-key')

wk.add({
    { "<leader>g",  "<cmd>G<CR>",             desc = "Open Git console" },
    { "<leader>h",  "<cmd>HopWord<CR>",       desc = "Hop" },
    { "<leader>s",  group = "Show" },
    { "<leader>ss", "<cmd>Outline<CR>",       desc = "Outline Symbols" },
    { "<leader>st", "<cmd>TroubleToggle<CR>", desc = "Diagnostic" },
    -- TODO:
    -- {
    --     mode = { "i" },
    --     { ";;", ":",       desc = ":" },
    --     { ";K", ";<esc>",  desc = "Esc" },
    --     { ";e", ";<esc>a", desc = "Escape ;" },
    --     { ";n", ";<esc>",  desc = "Escape ; to NORMAL" },
    --     { ";o", ";<esc>o", desc = "Escape ; to new line" },
    -- }
})
