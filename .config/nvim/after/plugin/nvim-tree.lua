local nmap = require('user.functions').nmap

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "<C-e>", function() end, opts(""))
    vim.keymap.set("n", "e", function() end, opts(""))
    vim.keymap.set("n", "<C-n>", api.node.open.tab, opts("Edit in new tab"))
    vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Edit"))
    vim.keymap.set("n", "<C-o>", api.node.open.edit, opts("Edit"))
    vim.keymap.set("n", "o", api.node.open.edit, opts("Edit"))
    vim.keymap.set("n", "<2-LeftMouse>", api.node.open.edit, opts("Edit"))
end

require("nvim-tree").setup({
    on_attach = my_on_attach,
    view = {
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
