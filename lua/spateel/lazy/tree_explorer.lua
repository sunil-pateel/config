return {

    'kyazdani42/nvim-tree.lua',
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.keymap.set("n", "<leader>pv", "<cmd> NvimTreeOpen<CR>", {silent = true})
        vim.keymap.set("n", "<leader>pc", "<cmd> NvimTreeClose<CR>", {silent = true})

        -- optionally enable 24-bit colour
        vim.opt.termguicolors = true

        require("nvim-tree").setup({
        })
    end

}
