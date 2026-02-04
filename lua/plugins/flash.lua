local MiniDeps = require("mini.deps")
local add, later = MiniDeps.add, MiniDeps.later

later(function()
    add({
        source = 'folke/flash.nvim',
    })

    local Flash = require("flash")
    Flash.setup({
        modes = {
            char = {
                enabled = false
            }
        }
    })

    vim.keymap.set({"n", "x", "o"}, "s", "<cmd>lua require('flash').jump()<cr>")
    vim.keymap.set({"n", "x", "o"}, "S", "<cmd>lua require('flash').tree()<cr>")
    vim.keymap.set("o", "r", "<cmd>lua require('flash').remote()<cr>")
    vim.keymap.set({"o", "x"}, "R", "<cmd>lua require('flash').treesitter_search()<cr>")
    vim.keymap.set({"c"}, "<c-s>", "<cmd>lua require('flash').toggle()<cr>")

end)
