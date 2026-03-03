local MiniDeps = require("mini.deps")
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later


later(function()
    add({
        source = 'lervag/vimtex',
    })

    vim.g.vimtex_view_method = 'general'
    vim.g.vimtex_view_general_viewer = "/mnt/c/Users/spate/AppData/Local/SumatraPDF/SumatraPDF.exe"
    vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
    vim.g.vimtex_view_general_options_latexmk = '-reuse-instance'
    vim.g.vimtex_complete_enabled = 0
    vim.g.vimtex_compiler_method = "latexmk"

    vim.keymap.set("n", "<leader>lc", "<cmd>VimtexCompile<CR>")
    vim.keymap.set("n", "<leader>lf", "magg=G'a<cmd>delmarks a<CR>")

end)
