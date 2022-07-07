require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "javascript", "typescript", "tsx", "css" , "lua", "rust", "vue", "bash", "c_sharp", "json"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    disable = { "vim" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}

-- TODO: config this
require'regexplainer'.setup {
    auto = true,
    filetypes = {
        'sh'
    }
}
require('numbers').setup {
    excluded_filetypes = {
        'nerdtree',
        'NvimTree',
        'unite',
        -- etc
  }
}
require("nvim-tree").setup ({
    view = {
        mappings = {
            list = {
                { key = "<C-e>", action = "" },
                { key = {"<CR>", "<C-o>", "o", "<2-LeftMouse>" }, action = "edit" },
            },
        },
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
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
    },
})
require'colorizer'.setup {
    '*';
}

