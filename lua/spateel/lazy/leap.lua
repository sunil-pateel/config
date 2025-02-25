return {
    "ggandor/leap.nvim",
    keys = {{"s"}, {"S"}},

    config = function()
        require('leap').create_default_mappings()
    end
}

