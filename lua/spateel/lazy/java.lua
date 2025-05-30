return {
    "nvim-java/nvim-java",
    event = "BufReadPost",
    dependencies = {
        "nvim-java/lua-async-await",
        "nvim-java/nvim-java-core",
        "nvim-java/nvim-java-test",
        "nvim-java/nvim-java-dap",
        "MunifTanjim/nui.nvim",
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        {
            "williamboman/mason.nvim",
            opts = {
                registries = {
                    "github:nvim-java/mason-registry",
                    "github:mason-org/mason-registry",
                },
            },
        },
    },
    config = function()
        require("java").setup({
            root_markers = {
                "settings.gradle",
                "settings.gradle.kts",
                "pom.xml",
                "build.gradle",
                "mvnw",
                "gradlew",
                "build.gradle",
                "build.gradle.kts",
            },
            jdk = {
                auto_install = false,
            }
        })

        require("lspconfig").jdtls.setup {
            -- lsp settings
            settings = {
                java = {
                    configuration = {
                        runtimes = {
                            {
                                name = "JavaSE-11.0.22",
                                path = "/usr/local/java-sdks/jdk-11.0.22",
                            },
                        },
                    },
                },
            },
        }
    end,
}
