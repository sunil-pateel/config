local add = require("mini.deps").add

add({
    source = 'ibhagwan/fzf-lua',
    depends = { 'nvim-tree/nvim-web-devicons' }
})

local Fzf = require('fzf-lua')
Fzf.setup {
    fzf_opts = { ['--cycle'] = true }
}

vim.keymap.set('n', '<leader>pf', Fzf.files, {})
vim.keymap.set('n', '<leader>ps', Fzf.live_grep, {})
vim.keymap.set('n', '<leader>pr', Fzf.lsp_references, {})
vim.keymap.set('n', '<leader>pds', Fzf.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>pdd', Fzf.diagnostics_document, {})
vim.keymap.set('n', '<leader>gc', Fzf.git_commits, {})
vim.keymap.set('n', '<leader>gb', Fzf.git_branches, {})
