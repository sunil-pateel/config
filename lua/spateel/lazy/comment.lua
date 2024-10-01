return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    config = function()
        require('Comment').setup({
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
    end

}
