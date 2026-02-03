local add = require("mini.deps").add

add({
    source = 'lewis6991/gitsigns.nvim',
})

local Gitsigns = require("gitsigns")
Gitsigns.setup({
    sign_priority = 100
})
