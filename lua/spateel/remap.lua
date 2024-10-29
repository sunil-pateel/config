
vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "{<CR>", "{<CR>}<Esc>ko")
vim.keymap.set("i", "(<CR>", "(<CR>)<Esc>ko")
vim.keymap.set("n", "<Enter>", "o<Esc>")
vim.keymap.set("n", "<S-Enter>", "O<Esc>")

--Clipboard Copy
vim.keymap.set("v", "<leader>y",  "\"+y")
vim.keymap.set("n", "<leader>Y",  "\"+yg")
vim.keymap.set("n", "<leader>y",  "\"+y")
vim.keymap.set("n", "<leader>yy",  "\"+yy")

--Clipboard Paste
vim.keymap.set("n", "<leader>p",  "\"+p")
vim.keymap.set("n", "<leader>P",  "\"+P")
vim.keymap.set("v", "<leader>p",  "\"+p")
vim.keymap.set("v", "<leader>P",  "\"+P")


--for live-server plugin
vim.keymap.set('n', '<leader>ss',':LiveServerStart<CR>')
vim.keymap.set('n', '<leader>sc', ':LiveServerStop<CR>')


