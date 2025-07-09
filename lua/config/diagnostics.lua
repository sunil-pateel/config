vim.diagnostic.config({
    virtual_text = {current_line = true}, -- Turn off inline diagnostics
})


vim.diagnostic.config({
    -- update_in_insert = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})
