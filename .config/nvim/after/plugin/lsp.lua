-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
local rt = require("rust-tools")
lsp.preset('lsp-compe')
lsp.skip_server_setup({'rust_analyzer'})

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer'
})
local cmp = require('cmp')
local lspkind = require('lspkind')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
    })
  },
}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-u>'] = cmp.mapping.scroll_docs(-4),
  ['<C-d>'] = cmp.mapping.scroll_docs(4),
  ['<C-e>'] = cmp.mapping.complete(),
  ['<C-h>'] = cmp.mapping.abort(),
  ['<CR>'] = cmp.mapping.confirm({select = true}),
})
local cmp_configs = lsp.defaults.cmp_config({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  sources = cmp.config.sources({
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = 'crates'},
  }, {
    {name = 'buffer'}
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
    })
  }
})

cmp.event:on(
'confirm_done', cmp_autopairs.on_confirm_done())

lsp.on_attach( function(client,bufnr)
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<leader><leader>', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  -- NOTE: see if needed
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, bufopts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>qf', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  -- vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  -- vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  -- vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  -- vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  -- vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)

end)
local rust_lsp = lsp.build_options('rust_analyzer', {
  on_attach = function(_, bufnr)
    -- Hover actions
    vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
    -- Code action groups
    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
  end,
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy"
      },
      inlayHints = { locationLinks = false }
    }
  }
})
lsp.setup()
cmp.setup(cmp_configs)
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Initialize rust_analyzer with rust-tools
require('rust-tools').setup({
  server = rust_lsp
})
