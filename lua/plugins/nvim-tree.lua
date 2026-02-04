local MiniDeps = require("mini.deps")
local add, later = MiniDeps.add, MiniDeps.later

later(function()
    add({
        source = 'nvim-tree/nvim-tree.lua',
        depends = { "nvim-tree/nvim-web-devicons" }
    })

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.keymap.set("n", "<leader>pv", "<cmd> NvimTreeOpen<CR>", { silent = true })
    vim.keymap.set("n", "<leader>pc", "<cmd> NvimTreeClose<CR>", { silent = true })

    local Nvim_tree = require("nvim-tree")
    Nvim_tree.setup({
        view = {
            side = "right"
        }
    })
end)
