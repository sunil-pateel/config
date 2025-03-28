return {
    "ggandor/leap.nvim",
    keys = {{"s", mode = "n"},{"s", mode = "v"}, {"S", mode = "n"}, {"S", mode = "v"}},

    config = function()
        require('leap').create_default_mappings()
    end
}

