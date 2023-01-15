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

vim.cmd.colorscheme "kanagawa"
