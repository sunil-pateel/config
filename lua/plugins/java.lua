local MiniDeps = require("mini.deps")
local add, later, now = MiniDeps.add, MiniDeps.later, MiniDeps.now

later(function()
    add({
        source = 'nvim-java/nvim-java',
        depends = { 'https://github.com/MunifTanjim/nui.nvim','https://github.com/mfussenegger/nvim-dap', 'JavaHello/spring-boot.nvim'},
    })

    require('java').setup({
        jdk = {
            auto_install = false,
            version = '25'
        }
    })
end)
