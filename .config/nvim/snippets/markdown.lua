---@diagnostic disable: undefined-global
--
local date = function()
    return {
        os.date('%d-%m-%Y')
    }
end

return {
    s( "titl", {
        t({"---"}),
        t({"","title: '"}), i(1), t({"'"}),
        t({"","description: '"}), i(2), t({"'"}),
        t({"","publishedAt: "}), f(date, {}),
        t({"","---","","# ",}), rep(1),
        t({"",""}), i(0)
    }),
    s( "cblock", {
        t({"```","",}),
        t({"",}), i(1),
        t({"","```",""}), i(0)
    })

}
