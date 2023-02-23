require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = {"lua", "vim", "rust", "javascript", "typescript","tsx", "css", "html", "json","toml", "vue" },
  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil
  },
    context_commentstring = {
    enable = true,
    enable_autocmd = false
  }
}
