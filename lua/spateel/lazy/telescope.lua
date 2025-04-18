return {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    keys = {{"<leader>pf"}, {"<leader>ps"}, {"<leader>pds"}, {"<leader>pr"}},
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
        vim.keymap.set('n', '<leader>pds', builtin.lsp_document_symbols, {})
        vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {})
    end
}
