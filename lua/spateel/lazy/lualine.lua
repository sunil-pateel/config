return {
    "https://github.com/nvim-lualine/lualine.nvim",
    config = function()
        local function condition()
            print(require("noice").api.statusline.mode.get())
            return require("noice").api.statusline.mode.has
        end

        local function test_condition()
            return true
        end
        require('lualine').setup {
            options = {
            theme = 'onedark'
            -- ... your lualine config
            },
            -- sections = {
    -- lualine_x = {
    --   {
    --     require("noice").api.statusline.mode.get,
    --     cond = require("noice").api.statusline.mode.has,
    --     color = { fg = "#ff9e64" },
    --   }
    -- },
  -- },
        }
    end
}

