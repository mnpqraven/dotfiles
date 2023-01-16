local ls = require("luasnip")
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
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet

-- user defined
local expr_pattern = "[%:%w%<%(%)$>%.%_%-%\"%']+$"
-- TODO: better logic, start with js
-- print(string.match("test var(Arc:Some(x).", expr_pattern))
-- print(string.match("test var2(Arc::Some(x).", expr_pattern))
-- print(string.match("test var2(Arc:::Some(x).", expr_pattern))
-- print(string.match("test Option<Ok(t)>.", expr_pattern))

return {
  postfix({trig=".option", match_pattern="[%<%>%(%)%w%.%_%-]+$"},
  {
    f(function(_, parent)
      print(parent.snippet.env.POSTFIX_MATCH)
      return "Option<" .. parent.snippet.env.POSTFIX_MATCH .. ">"
    end, {}),
  }),
  s( "pl?", {
    t({"println!(\"{:?}"}), i(1), d(2, rec_pl_q, {}),
    t({"\", "}), i(3), t({")"});
  }),
  s( "tst", {
    t({"#[test]",""}), i(1)
  }),
}
