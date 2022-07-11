---@diagnostic disable: undefined-global
local date = function() return {os.date('%d-%m-%Y')} end
return {
    s({
        trig = "date",
        namr = "Date",
        dscr = "Date in the form of DD-MM-YYYY",
    }, {
        f(date, {}),
    }),
    parse("hello", "world"),
    parse("file","Wow! This ${1:Stuff} really ${2:works. ${3:Well, a bit.}}"),
    s("filesame", fmt("{} and {} are getting edited at the same time", {i(1),rep(1)}))
}
