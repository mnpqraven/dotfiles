-- test
-- LSP SETUP
require("nvim-lsp-installer").setup {
    automatic_installation = true
}
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup {
    capabilities = capabilities
}
lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
    on_attach = function(client)
      -- [[ other on_attach code ]]
      require 'illuminate'.on_attach(client)
    end,
}
-- config debugging later
require('rust-tools').setup {}

lspconfig.volar.setup {
    capabilities = capabilities
}
lspconfig.tsserver.setup {
    capabilities = capabilities
}
lspconfig.eslint.setup {
    capabilities = capabilities
}
lspconfig.tailwindcss.setup {
    capabilities = capabilities,
    on_attach = function (_, bufnr)
        require("tailwindcss-colors").buf_attach(bufnr)
    end
}
lspconfig.bashls.setup {
    capabilities = capabilities
}
lspconfig.taplo.setup {
    capabilities = capabilities
}

vim.diagnostic.config({ update_in_insert = true, virtual_text = false, severity_sort = true})

-- signs on gutter columns
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- diagnostic on hover
-- messing up with cmp so disabled right now
-- vim.api.nvim_create_autocmd("CursorHold", {
--   buffer = bufnr,
--   callback = function()
--     local opts = {
--       focusable = false,
--       close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
--       border = 'rounded',
--       source = 'always',
--       prefix = ' ',
--       scope = 'cursor',
--     }
--     vim.diagnostic.open_float(nil, opts)
--   end
-- })
