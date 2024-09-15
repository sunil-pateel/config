return {
    'barrett-ruth/live-server.nvim',
    cmd =  { 'LiveServerStart' , 'LiveServerStop'},
    config = function()
        require('live-server').setup{
            args = {'--port=7000' }
        }
        vim.keymap.set('n', '<leader>ls',':LiveServerStart<CR>')
        vim.keymap.set('n', '<leader>lc', ':LiveServerStop<CR>')


    end
}
