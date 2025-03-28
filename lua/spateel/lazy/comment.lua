return {
    'numToStr/Comment.nvim',
    keys = {{"<leader>c", mode = "n"},{"<leader>c", mode = "v"}, {"<leader>b", mode = "n"}, {"<leader>b", mode = "v"}},
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
