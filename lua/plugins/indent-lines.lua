local MiniDeps = require("mini.deps")
local add, now = MiniDeps.add, MiniDeps.now

now(function()
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
