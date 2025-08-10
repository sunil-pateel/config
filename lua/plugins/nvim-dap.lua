return {
    'mfussenegger/nvim-dap',
    dependencies = {
        "mfussenegger/nvim-dap-python",
        "theHamsta/nvim-dap-virtual-text"
    },
    keys = { { "<leader>tb", mode = "n" } },
    config = function()
        require("dap-python").setup("python")
        require("nvim-dap-virtual-text").setup()

        local dap = require('dap')
        vim.keymap.set("n", "<leader>tb", "<cmd>DapToggleBreakpoint<CR>", {})
        vim.keymap.set("n", "<leader>tn", "<cmd>DapNew<CR>", {})
        dap.listeners.before['event_process']['custom-keymaps'] = function(session, body)
            vim.keymap.set("n", "j", require("dap").step_over, {})
            vim.keymap.set("n", "l", require("dap").step_into, {})
            vim.keymap.set("n", "h", require("dap").step_out, {})
            vim.keymap.set("n", "k", require("dap").step_back, {})
            vim.keymap.set("n", "c", require("dap").continue, {})
            vim.keymap.set("n", "p", "<cmd>lua require('dap').repl.open()<CR>", {})
            vim.keymap.set("n", "r", require("dap").restart, {})
            vim.keymap.set("n", "t", "<cmd>lua require('dap').terminate()<CR><cmd>TmuxNavigateDown<CR><cmd>q<CR>", {})
            vim.keymap.set("n", "o", "<cmd>below new<CR><cmd>2bn<CR><cmd>TmuxNavigateUp<CR>", {})
        end

        dap.listeners.after['event_terminated']['custom-keymaps'] = function(session, body)
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
    end
}
