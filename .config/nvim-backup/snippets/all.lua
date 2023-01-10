---@diagnostic disable: undefined-global
local date = function() return {os.date('%d-%m-%Y')} end
return {
  s({
    trig = "date",
    namr = "Date",
    dscr = "Date in the form of DD-MM-YYYY",
  }, {
    f(date, {}),
  })
}
