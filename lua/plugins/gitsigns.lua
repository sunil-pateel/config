local MiniDeps = require("mini.deps")
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

later(function()
    add({
        source = 'lewis6991/gitsigns.nvim',
    })

    local Gitsigns = require("gitsigns")
    Gitsigns.setup({})
end)
