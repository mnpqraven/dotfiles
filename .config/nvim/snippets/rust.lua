---@diagnostic disable: undefined-global
return {
    s("pl",
    fmta(
        [[
        println!("{}", <node1>);
        ]], {
            node1 = i(1,"$1")
        }
    )),
    s("pl?",
    fmta(
        [[
        println!("{:?}", <NODE_1>);
        ]], {
            NODE_1 = i(1,"$1")
        }
    )),
    s("pl2",
    fmta(
        [[
        println!("{} {}", <NODE_1>,<NODE_2>);
        ]], {
            NODE_1 = i(1,"$1"),
            NODE_2 = i(2,"$2")
        }
    ))
}
