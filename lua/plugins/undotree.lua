local add = require("mini.deps").add
local build = ":TSUpdate"

add({
    source = 'mbbill/undotree',
})

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
