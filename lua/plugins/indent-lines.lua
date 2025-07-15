return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "BufEnter",
    opts = {
        exclude =  {
            filetypes = {"dashboard"}
        }
    }
}
