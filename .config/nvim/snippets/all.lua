---@diagnostic disable: undefined-global
return {
    parse("hello", "world"),
    parse("file","Wow! This ${1:Stuff} really ${2:works. ${3:Well, a bit.}}"),
    s("filesame", fmt("{} and {} are getting edited at the same time", {i(1),rep(1)}))
}
