return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    event = "VeryLazy",
    keys = {{"<leader>pv"}, {"<leader>pc"}},
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        vim.keymap.set("n", "<leader>pv", "<cmd> NvimTreeOpen<CR>", { silent = true })
        vim.keymap.set("n", "<leader>pc", "<cmd> NvimTreeClose<CR>", { silent = true })
        require("nvim-tree").setup()
    end,
}
