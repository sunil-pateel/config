--Leader
vim.g.mapleader = " "

--Classic
vim.keymap.set("i", "jj", "<Esc>")

--Adding Empty Lines
vim.keymap.set("n", "<Enter>", "o<Esc>")
vim.keymap.set("n", "<S-Enter>", "O<Esc>")

--Clipboard Copy
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+yg")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>yy", "\"+yy")

--Clipboard Paste
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>P", "\"+P")

--Moving selected text around
vim.keymap.set("v", "K", ":m '<-2<CR>gv", { silent = true })
vim.keymap.set("v", "J", ":m '>+1<cr>gv", { silent = true })

vim.keymap.set("v", "L", ":m '<CR>gv>gv", { silent = true })
vim.keymap.set("v", "H", ":m '<CR>gv<gv", { silent = true })

--Searching and Replacing current word
vim.keymap.set("n", "<leader>/", [[/<C-r><C-w>]])

-- Neogen
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>wc", ":lua require('neogen').generate({})<CR>", opts)

-- Diagnostics
vim.keymap.set('n', '<leader>nd', vim.diagnostic.goto_next, { silent = true })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { silent = true })
vim.keymap.set('n', '<Leader>np', vim.diagnostic.goto_prev, { silent = true })
