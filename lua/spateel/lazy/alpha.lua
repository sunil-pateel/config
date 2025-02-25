return {
    "goolord/alpha-nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
        local alpha = require("alpha")

        local headers = {
            ["nvim"] = {
                "                                                     ",
                "                                                     ",
                "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
                "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
                "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
                "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            },
        }

        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = headers.nvim
        dashboard.section.header.opts.position = "center"

        dashboard.section.buttons.val = {
            dashboard.button("SPC p v", "  Project Directory", "<cmd> NvimTreeOpen<CR>"),
            dashboard.button("SPC p f", "  Find File", require('telescope.builtin').find_files),
            dashboard.button("SPC p s", "T  Find Text", function()
                require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") });
            end),
            dashboard.button("a", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("c", "  Configuration", ":e ~/.config/nvim<CR>"),
            dashboard.button("u", "  Update Plugins", ":Lazy update<CR>"),
            dashboard.button("q", "✕  Quit Neovim", ":qa!<CR>"),
        }

        local footer = function()
            local version = " " .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch
            local lazy_ok, lazy = pcall(require, "lazy")
            if lazy_ok then
                local total_plugins = "   " .. lazy.stats().count .. " Plugins"
                local startuptime = (math.floor(lazy.stats().startuptime * 100 + 0.5) / 100)
                return version .. total_plugins .. " 󱐿 " .. startuptime .. "ms"
            else
                return version
            end
        end

        dashboard.section.footer.val = footer()
        dashboard.section.footer.opts.position = "center"

        dashboard.section.footer.opts.hl = "AlphaFooter"
        dashboard.section.header.opts.hl = "AlphaHeader"
        dashboard.section.buttons.opts.hl = "AlphaButton"

        dashboard.opts.opts.noautocmd = false
        alpha.setup(dashboard.opts)
    end,
}
