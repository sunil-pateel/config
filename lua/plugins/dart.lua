return {
    'iofq/dart.nvim',
    dependencies = {
        'navarasu/onedark.nvim'
    },
    config = function()
        require('dart').setup({
            tabline = {
                order = function()
                    local order = {}
                    for i, key in ipairs(vim.list_extend(vim.deepcopy(Dart.config.marklist), Dart.config.buflist)) do
                        order[key] = i
                    end
                    return order
                end,
            },
            mappings = {
                mark = "<leader>a",
                jump = "<leader>j"
            }
        })
        local dart = require('dart')
        local marklist = { 'a', 's', 'd', 'f', 'q', 'w', 'e', 'r' }
        for _, char in ipairs(marklist) do
            vim.keymap.set("n", "<leader>k" .. char, function() dart.unmark({ type = "marks", marks = { char } }) end)
        end
    end
}
