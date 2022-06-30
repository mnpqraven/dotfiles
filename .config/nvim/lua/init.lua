require("nvim-lsp-installer").setup {
  automatic_installation = true
}
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup {
capabilities = capabilities
}
lspconfig.rust_analyzer.setup {
capabilities = capabilities
}
lspconfig.volar.setup {
capabilities = capabilities
}
lspconfig.tsserver.setup {
capabilities = capabilities
}
lspconfig.eslint.setup {
capabilities = capabilities
}
