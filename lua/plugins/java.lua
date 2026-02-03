local data_dir = vim.fn.stdpath("data")
local jls_dir = vim.fs.joinpath(data_dir, "mason", "packages", "java-language-server")

local add = require("mini.deps").add

add({
    source = 'idelice/nvim-jls',
})

local Jls = require("jls")
Jls.setup({
    jls_dir = jls_dir
})
