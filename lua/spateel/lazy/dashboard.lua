return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
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
                -- dashboard.button("SPC p v", "  Project Directory", "<cmd> NvimTreeOpen<CR>"),
                -- dashboard.button("SPC p f", "  Find File", require('telescope.builtin').find_files),
                -- dashboard.button("SPC p s", "T  Find Text", function()
                --     require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") });
                -- end),
                -- dashboard.button("a", "  New file", ":ene <BAR> startinsert <CR>"),
                -- dashboard.button("c", "  Configuration", ":e ~/.config/nvim<CR>"),
                -- dashboard.button("u", "  Update Plugins", ":Lazy update<CR>"),
                -- dashboard.button("q", "✕  Quit Neovim", ":qa!<CR>"),
                center = {
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' Project Directory                  ',
                        key = 'SPC p v',
                        key_hl = 'Keyword',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = ':NvimTreeOpen<CR>'
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' Find File                  ',
                        key = 'SPC p f',
                        key_hl = 'Keyword',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = require('telescope.builtin').find_files
                    },
                    {
                        icon = 'T ',
                        icon_hl = 'Title',
                        desc = ' Find Text                  ',
                        key = 'SPC p s',
                        key_hl = 'Keyword',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = function()
                            require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") });
                        end
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' New File                  ',
                        key = 'a',
                        key_hl = 'Keyword',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = ":ene <BAR> startinsert"
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' Configuration                  ',
                        key = 'c',
                        key_hl = 'Keyword',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = ":e ~/.config/nvim"
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = ' Update Plugins                  ',
                        key = 'u',
                        key_hl = 'Keyword',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = ":Lazy update"
                    },
                    {
                        icon = '✕ ',
                        icon_hl = 'Title',
                        desc = ' Quit Neovim                  ',
                        key = 'q',
                        key_hl = 'Keyword',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = ":q"
                    },

                },
                footer = {},
            }
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
