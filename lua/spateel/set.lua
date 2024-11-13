--

vim.opt.nu = true

vim.wo.relativenumber = true

vim.opt.cursorline = true

--Tab Config
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

--Fold Config
vim.opt.foldmethod='indent'
vim.opt.foldlevel = 0
vim.opt.foldnestmax = 1
vim.opt.scrolloff = 10

--Backup Config
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

--Search Config
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true


vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50


--vim.opt.colorcolumn = "80"
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "#252629" })
vim.api.nvim_set_option("clipboard","unnamed")
