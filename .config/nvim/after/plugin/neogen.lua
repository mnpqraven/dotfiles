local nmap = require("user.functions").nmap

nmap('<leader>d', function()
  require('neogen').generate()
end)
