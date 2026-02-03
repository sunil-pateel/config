local add = require("mini.deps").add

add({
    source = 'numToStr/Comment.nvim',
})
local Comment = require("Comment")
Comment.setup({
    toggler = {
        ---Line-comment toggle keymap
        line = '<leader>c',
        ---Block-comment toggle keymap
        block = '<leader>b',
    },
    opleader = {
        ---Line-comment keymap
        line = '<leader>c',
        ---Block-comment keymap
        block = '<leader>b',
    },
})
