local map = vim.keymap.set

-- スペースをリーダーキーに
vim.g.mapleader = " "

-- leader save
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")

-- moving
map("n", "J", "mzJ`z")

-- Netrw
map("n", "<leader>e", ":Lex<CR>")

