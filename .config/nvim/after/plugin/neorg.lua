-- TODO: dynamic color
vim.cmd [[highlight Headline1 guibg=#1e2718]]
vim.cmd [[highlight Headline2 guibg=#21262d]]
vim.cmd [[highlight CodeBlock guibg=#1c1c1c]]
vim.cmd [[highlight Dash guibg=#D19A66 gui=bold]]

-- require("headlines").setup {
--     norg = {
--         headline_highlights = { "Headline1", "Headline2" },
--     },
-- }

require('neorg').setup({
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {
      config = {
        icon_preset = "diamond",
        conceal = false
      }
    },
    ["core.dirman"] = {
      config = {
        workspaces = {
          repos = "~/Repos",
        },
      },
    },
    ["core.completion"] = {
      config = { engine = "nvim-cmp" }
    },
    ["core.keybinds"] = {
      config = {
        default_keybinds = true,
        neorg_leader = "<leader>"
      }
    },
    ["core.export"] = {}
  },
})
local wk = require('which-key')
wk.register({
  ["gt"] = {
    name = "Neorg TODO",
    d = { name = " Done"},
    p = { name = " Pending"},
    u = { name = " Undone"},
    h = { name = " On Hold"},
    c = { name = " Cancelled"},
    r = { name = " Recurring"},
    i = { name = "⚠ Important"},
    w = { name = " Uncertain"},
  },
  ["<leader>nn"] = {name = "New .norg file"}
})
