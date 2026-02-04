local MiniDeps = require("mini.deps")
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

now(function()
    add({
        source = 'nvim-lualine/lualine.nvim',
    })

    local Lualine = require("lualine")
    Lualine.setup({
        options = {
            theme = 'onedark',
            disabled_filetypes = { 'dashboard' }
        },
    })
end)
