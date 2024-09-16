return {

    'kyazdani42/nvim-tree.lua',
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.keymap.set("n", "<leader>pv", ":NvimTreeOpen<CR>")
        vim.keymap.set("n", "<leader>pc", ":NvimTreeClose<CR>")

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        require("nvim-tree").setup({
        })
    end
}
