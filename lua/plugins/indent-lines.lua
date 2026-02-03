local add = require("mini.deps").add

add({
    source = 'lukas-reineke/indent-blankline.nvim',
})

local Ibl = require("ibl")
Ibl.setup({
    exclude = {
        filetypes = { "dashboard" }
    },
    scope = { enabled = false },
})
