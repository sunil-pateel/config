local MiniDeps = require("mini.deps")
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

later(function()
    add({
        source = 'lukas-reineke/indent-blankline.nvim',
    })

    local Ibl = require("ibl")
    Ibl.setup({
        exclude = {
            filetypes = { "dashboard" }
        },
        scope = { enabled = false },
    })
end)
