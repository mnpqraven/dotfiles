---@diagnostic disable: undefined-global
return {
  s({
    trig = "date",
    namr = "Date",
    dscr = "Date in the form of DD-MM-YYYY",
  }, {
    f(function() return { os.date('%d-%m-%Y') } end, {}),
  }),
  -- NOTE: debug
  postfix(".val",
    {
      f(function(_, parent)
        print(parent.snippet.env.POSTFIX_MATCH)
        return "Vec<" .. parent.snippet.env.POSTFIX_MATCH .. ">"
      end, {}),
    }),
}
