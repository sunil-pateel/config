local add = require("mini.deps").add

add({
    source = 'nvimdev/dashboard-nvim',
    depends = { 'nvim-tree/nvim-web-devicons', 'ibhagwan/fzf-lua' }
})

local Dashboard = require('dashboard')
Dashboard.setup({
    theme = "doom",
    config = {
        header = {
            "                                                     ",
            "                                                     ",
            "                                                     ",
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                     ",
            "                                                     ",
        }, --your header
        center = {
            {
                icon = ' ',
                icon_hl = 'Title',
                desc = ' Project Directory                  ',
                key = 'SPC p v',
                key_hl = 'Title',
                key_format = ' %s', -- remove default surrounding `[]`
                action = ':NvimTreeOpen<CR>'
            },
            {
                icon = ' ',
                icon_hl = 'Title',
                desc = ' Find File                  ',
                key = 'SPC p f',
                key_hl = 'Title',
                key_format = ' %s', -- remove default surrounding `[]`
                action = require('fzf-lua').files
            },
            {
                icon = 'T ',
                icon_hl = 'Title',
                desc = ' Find Text                  ',
                key = 'SPC p s',
                key_hl = 'Title',
                key_format = ' %s', -- remove default surrounding `[]`
                action = require("fzf-lua").live_grep,
            },
            {
                icon = ' ',
                icon_hl = 'Title',
                desc = ' Configuration                  ',
                key = 'c',
                key_hl = 'Title',
                key_format = ' %s', -- remove default surrounding `[]`
                action = ":e ~/.config/nvim"
            },
            {
                icon = ' ',
                icon_hl = 'Title',
                desc = ' Update Plugins                  ',
                key = 'u',
                key_hl = 'Title',
                key_format = ' %s', -- remove default surrounding `[]`
                action = ":DepsUpdate"
            },
            {
                icon = '✕ ',
                icon_hl = 'Title',
                desc = ' Quit Neovim                  ',
                key = 'q',
                key_hl = 'Title',
                key_format = ' %s', -- remove default surrounding `[]`
                action = ":q"
            },

        },
        footer = {},
    }
})

local c = require("onedark.colors")
vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = c.purple })
