-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
local rt = require("rust-tools")
lsp.preset('recommended')
lsp.skip_server_setup({'rust_analyzer'})

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer'
})
local cmp = require('cmp')
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
    {name = 'luasnip'},
    {name = 'nvim_lsp'},
    {name = 'crates'},
  }, {
    {name = 'buffer'}
  })
})

-- cmp.event:on(
-- 'confirm_done', cmp_autopairs.on_confirm_done())

lsp.on_attach( function(client,bufnr)
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  -- vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  -- vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  -- vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  -- vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
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

-- Initialize rust_analyzer with rust-tools
require('rust-tools').setup({
  server = rust_lsp
})
