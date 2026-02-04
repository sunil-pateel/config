local data_dir = vim.fn.stdpath("data")
local jls_dir = vim.fs.joinpath(data_dir, "mason", "packages", "java-language-server")

local MiniDeps = require("mini.deps")
local add, later = MiniDeps.add, MiniDeps.later

later(function()
    add({
        source = 'idelice/nvim-jls',
    })

    local Jls = require("jls")
    Jls.setup({
        jls_dir = jls_dir
    })
end)
