return {

    'kyazdani42/nvim-tree.lua',
    config = function()

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- optionally enable 24-bit colour
vim.opt.termguicolors = true

require("nvim-tree").setup({
})
    end
}
