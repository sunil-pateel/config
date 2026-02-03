local add = require("mini.deps").add

add({
    source = "saghen/blink.cmp",
    checkout = "v1.9.0", -- Update this every so often
})

local Blink = require("blink.cmp")
Blink.setup({
    keymap = {
        preset = 'enter',
        ['<C-n>'] = { 'show', 'select_next', 'fallback_to_mappings' }
    },

    appearance = {
        nerd_font_variant = 'mono'
    },

    completion = {
        documentation = {
            auto_show = true,
            window = {
                border = "rounded"
            }
        },
        menu = {
            border = "rounded"
        }
    },
    sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = {
        implementation = "prefer_rust",
    },
    signature = {
        enabled = true,
        window = {
            border = "rounded"
        },
    }
})
