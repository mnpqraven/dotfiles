---@diagnostic disable: undefined-global
local rec_pl = function ()
  return sn(nil, {
    c(1, {
      t({""}),
      sn(nil, {t({" {}"}), i(1), d(2,rec_pl, {})}),
    })
  })
end
local rec_pl_q = function ()
  return sn(nil, {
    c(1, {
      t({""}),
      sn(nil, {t({" {:?}"}), i(1), d(2,rec_plq, {})}),
    })
  })
end

return {
  s( "pl", {
    t({"println!(\"{}"}), i(1), d(2, rec_pl, {}),
    t({"\", "}), i(3), t({")"});
  }),
  s( "pl?", {
    t({"println!(\"{:?}"}), i(1), d(2, rec_pl_q, {}),
    t({"\", "}), i(3), t({")"});
  }),
}
