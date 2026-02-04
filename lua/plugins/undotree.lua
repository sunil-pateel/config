local MiniDeps = require("mini.deps")
local add, later = MiniDeps.add, MiniDeps.later

later(function()
    add({
        source = 'mbbill/undotree',
    })

    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
end)
