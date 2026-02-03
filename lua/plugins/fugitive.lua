local add = require("mini.deps").add

add({
    source = 'tpope/vim-fugitive',
})

vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
