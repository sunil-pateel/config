local MiniDeps = require("mini.deps")
local add, now = MiniDeps.add, MiniDeps.now

now(function()
    add({
        source = 'lewis6991/gitsigns.nvim',
    })

    local Gitsigns = require("gitsigns")
    Gitsigns.setup({})
end)
