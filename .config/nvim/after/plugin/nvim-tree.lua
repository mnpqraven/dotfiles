local nmap = require('user.functions').nmap
require("nvim-tree").setup({
    view = {
        mappings = {
            list = {
                { key = "<C-e>",                                   action = "" },
                { key = "e",                                       action = "" },
                { key = "<C-n>",                                   action = "tabnew" },
                { key = { "<CR>", "<C-o>", "o", "<2-LeftMouse>" }, action = "edit" },
            },
        },
        width = 35,
    },
    renderer = {
        icons = {
            glyphs = {
                git = {
                    unstaged = "",
                    -- staged = "✓",
                    -- unmerged = "",
                    -- renamed = "➜",
                    untracked = "",
                    -- deleted = "",
                    -- ignored = "◌",
                },
            },
        },
        indent_markers = {
            enable = true
        },
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
    },
})
nmap('<C-\\>', '<cmd>NvimTreeToggle<CR>')
