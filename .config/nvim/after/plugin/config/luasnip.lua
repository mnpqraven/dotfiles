---@diagnostic disable: unused-local, undefined-global
local ls = require"luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep
local m = require("luasnip.extras").m
local lambda = require("luasnip.extras").l
local postfix = require("luasnip.extras.postfix").postfix
local types = require 'luasnip.util.types'

-- Every unspecified option will be set to the default.
ls.config.set_config({
  history = true,
  -- Update more often, :h events for more info.
  update_events = "TextChanged,TextChangedI",
  -- Snippets aren't automatically removed if their text is deleted.
  -- `delete_check_events` determines on which events (:h events) a check for
  -- deleted snippets is performed.
  -- This can be especially useful when `history` is enabled.
  delete_check_events = "TextChanged",
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "<-", "Error" } },
      },
    },
  },
  -- custom rep global env scope
  -- snip_env = {
    --     rep = require("luasnip.extras").rep
    -- },
    -- treesitter-hl has 100, use something higher (default is 200).
    ext_base_prio = 300,
    -- minimal increase in priority.
    ext_prio_increase = 1,
    enable_autosnippets = true,
    -- mapping for cutting selected text so it's usable as SELECT_DEDENT,
    -- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
    store_selection_keys = "<Tab>",
    -- luasnip uses this function to get the currently active filetype. This
    -- is the (rather uninteresting) default, but it's possible to use
    -- eg. treesitter for getting the current filetype by setting ft_func to
    -- require("luasnip.extras.filetype_functions").from_cursor (requires
    -- `nvim-treesitter/nvim-treesitter`). This allows correctly resolving
    -- the current filetype in eg. a markdown-code block or `vim.cmd()`.
    ft_func = function()
      return vim.split(vim.bo.filetype, ".", true)
    end,
  })


  vim.keymap.set({ "i", "s" }, '<c-k>', function ()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end, { silent = true })

  vim.keymap.set({ "i", "s"}, "<s-tab>", function ()
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end, { silent = true })
  vim.keymap.set({ "i", "s"}, "<tab>", function ()
    if ls.jumpable(1) then
      ls.jump(1)
    end
  end, { silent = true })
  vim.keymap.set({ "i", "s"}, "<c-n>", function ()
    if ls.choice_active() then
      ls.change_choice(1)
    end
  end, { silent = true })
  vim.keymap.set({ "i", "s"}, "<c-l>", function ()
    if ls.choice_active() then
      ls.change_choice(-1)
    end
  end, { silent = true })


  -- load files
  require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets"})


  ls.add_snippets(nil, {
    -- example snippets
    all = {
      s("triggerexample", {
        t({"After expanding, the cursor is here ->"}), i(1),
        t({"", "After jumping forward once, cursor is editing at the same time ->"}), i(2),
        t({"", "After jumping forward once, cursor is moving at the same time ->"}), rep(2),
        t({"", "After jumping once more, the snippet is exited there ->"}), i(0),
      }),
      ls.parser.parse_snippet("lspsyn","Wow! This ${1:Stuff} really ${2:works. ${3:Well, a bit.}}"),
    },
  })

