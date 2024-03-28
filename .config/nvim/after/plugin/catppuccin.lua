require('catppuccin').setup({
    transparent_background = true
})

require('kanagawa').setup({
    transparent = true,
    specialReturn = true,
    keywordStyle = { italic = false },
})

vim.g.mellow_transparent = true

require('mellifluous').setup({
    transparent_background = {
        enabled = true
    }
})

require('onedark').setup {
    transparent = true,
    style = 'warmer',
    code_style = {
        keywords = 'italic',
    },
    lualine = {
        transparent = true
    }
}

require("tokyonight").setup({
    style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    transparent = false,    -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",            -- style for sidebars, see below
        floats = "normal",            -- style for floating windows
    },
    sidebars = { "qf", "help" },      -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3,             -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = true,              -- dims inactive windows
    lualine_bold = true,              -- When `true`, section headers in the lualine theme will be bold
})

-- vim.cmd.colorscheme "catppuccin"
vim.cmd [[colorscheme tokyonight]]
