vim.diagnostic.config({
    virtual_text = {current_line = true}, -- Turn off inline diagnostics
})


vim.diagnostic.config({
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})
