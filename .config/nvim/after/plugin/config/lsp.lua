-- LSP SETUP
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "sumneko_lua", "rust_analyzer", "taplo", "bashls",
    "volar", "tsserver", "eslint", "jsonls",
    "texlab", "omnisharp", "tailwindcss",
  }
})
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
    },
  },
}
-- config debugging later
local rt = require('rust-tools')
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
    end,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy"
        }
      }
    }
  }
})
lspconfig.taplo.setup { capabilities = capabilities }

lspconfig.volar.setup { capabilities = capabilities }
lspconfig.tsserver.setup { capabilities = capabilities }
lspconfig.eslint.setup { capabilities = capabilities }
lspconfig.yamlls.setup { capabilities = capabilities }
lspconfig.jsonls.setup { capabilities = capabilities,
  settings = {
    json = {
      schemas = vim.list_extend(
        {
          {
            name = 'Skillbook Chema',
            description = 'My custom JSON schema',
            fileMatch = { 'skillbook.json', 'skillbook.jsonc' },
            url = './schemas/skillbook_schema.json'
          },
        },
        require('schemastore').json.schemas()
      ),
      validate = { enable = true },
    }
  }
}
lspconfig.yamlls.setup { capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ['./schemas/skillbook_schema.json'] =
        'skillbook.{yml,yaml}'
      },
    }
  }
}
lspconfig.bashls.setup { capabilities = capabilities }
lspconfig.texlab.setup { capabilities = capabilities }
lspconfig.omnisharp.setup { capabilities = capabilities }
lspconfig.tailwindcss.setup { capabilities = capabilities,
  on_attach = function(_, bufnr)
    require("tailwindcss-colors").buf_attach(bufnr)
  end
}
lspconfig.cssls.setup { capabilities = capabilities }

vim.diagnostic.config({ update_in_insert = true, virtual_text = false, severity_sort = true })

-- signs on gutter columns
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
