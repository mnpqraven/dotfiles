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

vim.cmd.colorscheme "onedark"
