-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
local rt = require("rust-tools")
local builtin = require('telescope.builtin')
local wk = require('which-key')
local crates = require('crates')
lsp.preset('lsp-compe')
lsp.skip_server_setup({ 'rust_analyzer' })

lsp.ensure_installed({
  'sumneko_lua',
  'tsserver',
  'rust_analyzer',
  'taplo',
  'tailwindcss',
  'cssls',
  'cssmodules_ls',
  'emmet_ls'
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
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
})
local cmp_configs = lsp.defaults.cmp_config({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'crates' },
  }, {
    { name = 'buffer' }
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

lsp.on_attach(function(client, bufnr)
  require('lsp_signature').on_attach({
    bind = true,
    handler_opts = { border = "single" },
    hint_prefix = "> "
  }, bufnr)

  local opts = { buffer = bufnr, noremap = true }
  wk.register({
    g = {
      name = "Go",
      d = { vim.lsp.buf.definition, "Go to definition", buffer = bufnr },
      D = { vim.lsp.buf.declaration, "Go to declaration", buffer = bufnr },
      r = { vim.lsp.buf.references, "List references", buffer = bufnr }
    },
    K = { vim.lsp.buf.hover, "Hover", buffer = bufnr },
    ['<C-k>'] = { vim.lsp.buf.signature_help, "Signature help", buffer = bufnr },
    ["["] = {
      d = { vim.diagnostic.goto_next, "Next diagnostic", buffer = bufnr }
    },
    ["]"] = {
      d = { vim.diagnostic.goto_prev, "Previous diagnostic", buffer = bufnr }
    }
  })
  wk.register({
    o = { vim.lsp.buf.format, "Format", buffer = bufnr },
    D = { vim.lsp.buf.type_definition, "Go to type definition", buffer = bufnr },
    ["rn"] = { vim.lsp.buf.rename, "Rename", buffer = bufnr },
    ["qf"] = { vim.lsp.buf.code_action, "Code actions", buffer = bufnr },
    ["<leader>"] = { vim.diagnostic.open_float, "Open diagnostic window", buffer = bufnr }
  }, { prefix = "<leader>" })
end)

lsp.configure('taplo', {
  on_attach = function(_, bufnr)
    wk.register({
      c = {
        name = "Cargo",
        u = { crates.update_crate, "Update crate", buffer = bufnr },
        U = { crates.upgrade_crate, "Upgrade crate", buffer = bufnr },
        u = { crates.update_crates, "Update crates", mode = "v", buffer = bufnr },
        u = { crates.upgrade_crates, "Upgrade crates", mode = "v", buffer = bufnr },
        a = { crates.upgrade_all_crates, "Upgrade all crates", buffer = bufnr },
        h = { crates.open_homepage, "Open homepage", buffer = bufnr },
        d = { crates.open_documentation, "Open documentation", buffer = bufnr },
      }
    }, { prefix = "<leader>"})
  end
})

lsp.configure('lua', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.configure('tailwindcss', {
  on_attach = function(_, bufnr)
    require("tailwindcss-colors").buf_attach(bufnr)
  end
})

local rust_lsp = lsp.build_options('rust_analyzer', {
  on_attach = function(_, bufnr)
    wk.register({
      K = {rt.hover_actions.hover_actions,"Hover actions", buffer = bufnr },
    })
    wk.register({
      c = {
        name = "cargo",
        r = {rt.runnables.runnables, "Cargo actions", buffer = bufnr }
      },
    }, {prefix = "<leader>"})
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

-- signs on gutter columns
local signs = { Error = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
