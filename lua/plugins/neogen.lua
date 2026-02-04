local MiniDeps = require("mini.deps")
local add, later = MiniDeps.add, MiniDeps.later

later(function()
    add({
        source = 'danymat/neogen',
    })

    local Neogen = require('neogen')
    Neogen.setup({})
end)
