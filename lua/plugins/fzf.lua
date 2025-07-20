return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
    },
    config = function()
        require('fzf-lua').setup {
            fzf_opts = { ['--cycle'] = true }
        }
        local fzf = require('fzf-lua')

        vim.keymap.set('n', '<leader>pf', fzf.files, {})
        vim.keymap.set('n', '<leader>ps', fzf.live_grep, {})
        vim.keymap.set('n', '<leader>pr', fzf.lsp_references, {})
        vim.keymap.set('n', '<leader>pds', fzf.lsp_document_symbols, {})
    end
}

-- return {
--     'nvim-telescope/telescope.nvim',
--     dependencies = { { 'nvim-lua/plenary.nvim' } },
--     keys = {{"<leader>pf"}, {"<leader>ps"}, {"<leader>pds"}, {"<leader>pr"}},
--     config = function()
--         local builtin = require('telescope.builtin')
--         vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
--         vim.keymap.set('n', '<leader>ps', function()
--             builtin.grep_string({ search = vim.fn.input("Grep > ") });
--         end)
--         vim.keymap.set('n', '<leader>pds', builtin.lsp_document_symbols, {})
--         vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {})
--     end
-- }
