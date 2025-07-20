return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {{"<leader>pf"}, {"<leader>ps"}, {"<leader>pds"}, {"<leader>pr"}, {"<leader>pdd"}, {"<leader>gc"}, {"<leader>gb"}},
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
        vim.keymap.set('n', '<leader>pdd', fzf.diagnostics_document, {})
        vim.keymap.set('n', '<leader>gc', fzf.git_commits, {})
        vim.keymap.set('n', '<leader>gb', fzf.git_branches, {})
    end
}
