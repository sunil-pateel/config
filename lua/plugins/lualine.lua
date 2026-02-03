local add = require("mini.deps").add

add({
    source = 'https://github.com/nvim-lualine/lualine.nvim',
})

local Lualine = require("lualine")
Lualine.setup({
    options = {
        theme = 'onedark'
        -- ... your lualine config
    },
})
