local MiniDeps = require("mini.deps")
local add, now = MiniDeps.add, MiniDeps.now
now(function ()
    add({
        source = 'iofq/dart.nvim',
        depends = { 'navarasu/onedark.nvim' }
    })

    local Dart = require("dart")
    Dart.setup({
        tabline = {
            order = function()
                local order = {}
                for i, key in ipairs(vim.list_extend(vim.deepcopy(Dart.config.marklist), Dart.config.buflist)) do
                    order[key] = i
                end
                return order
            end,
            format_item = function(item)
                local content = item.icon ~= nil and string.format('%s %s', item.icon, item.content) or item.content
                return string.format(
                    '%%#%s#%s %s%%#%s#%s %%X',
                    item.hl_label,
                    item.click,
                    item.label,
                    item.hl,
                    content
                )
            end,
        },
        mappings = {
            mark = "<leader>a",
            jump = "<leader>j"
        }
    })

    local marklist = { 'a', 's', 'd', 'f', 'q', 'w', 'e', 'r' }
    for _, char in ipairs(marklist) do
        vim.keymap.set("n", "<leader>k" .. char, function() dart.unmark({ type = "marks", marks = { char } }) end)
    end
end)
