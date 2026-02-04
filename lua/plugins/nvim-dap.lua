local MiniDeps = require("mini.deps")
local add, later = MiniDeps.add, MiniDeps.later

later(function()
    add({
        source = 'mfussenegger/nvim-dap',
        depends = {
            "mfussenegger/nvim-dap-python",
            "theHamsta/nvim-dap-virtual-text"
        }
    })
    local Dap = require('dap')
    local Dap_python = require("dap-python")
    local Nvim_dap_virtual_text = require("nvim-dap-virtual-text")

    Dap_python.setup("python")
    Nvim_dap_virtual_text.setup()

    vim.keymap.set("n", "<leader>tb", "<cmd>DapToggleBreakpoint<CR>", {})
    vim.keymap.set("n", "<leader>tn", "<cmd>DapNew<CR>", {})
    Dap.listeners.before['event_process']['custom-keymaps'] = function(session, body)
        vim.keymap.set("n", "j", Dap.step_over, {})
        vim.keymap.set("n", "l", Dap.step_into, {})
        vim.keymap.set("n", "h", Dap.step_out, {})
        vim.keymap.set("n", "k", Dap.step_back, {})
        vim.keymap.set("n", "c", Dap.continue, {})
        vim.keymap.set("n", "p", Dap.repl.open, {})
        vim.keymap.set("n", "r", Dap.restart, {})
        vim.keymap.set("n", "t", "<cmd>lua require('dap').terminate()<CR><cmd>TmuxNavigateDown<CR><cmd>q<CR>", {})
        vim.keymap.set("n", "o", "<cmd>below new<CR><cmd>2bn<CR><cmd>TmuxNavigateUp<CR>", {})
    end

    Dap.listeners.after['event_terminated']['custom-keymaps'] = function(session, body)
        vim.keymap.set("n", "j", "j", {})
        vim.keymap.set("n", "l", "l", {})
        vim.keymap.set("n", "h", "h", {})
        vim.keymap.set("n", "k", "k", {})
        vim.keymap.set("n", "c", "c", {})
        vim.keymap.set("n", "p", "p", {})
        vim.keymap.set("n", "r", "r", {})
        vim.keymap.set("n", "t", "t", {})
        vim.keymap.set("n", "o", "o", {})
    end
end)
