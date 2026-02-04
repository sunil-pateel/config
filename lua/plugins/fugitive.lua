local MiniDeps = require("mini.deps")
local add, later = MiniDeps.add, MiniDeps.later

later(function()
    add({
        source = 'tpope/vim-fugitive',
    })

    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
end)
