require("twilight").setup({
    dimming = {
        alpha = 0.6,
        inactive = true
    },
    expand = {
        "function_item",
        "function",
        "method",
        "table",
        "if_statement",
        "expression_statement",
    }
})
-- vim.cmd([[TwilightEnable]])
