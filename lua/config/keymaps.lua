local map = vim.keymap.set

-- スペースをリーダーキーに
vim.g.mapleader = " "

-- leader save
map("n", "<leader>w", ":w<CR>",  {silent = true})
map("n", "<leader>q", ":q<CR>",  {silent = true})

-- moving
map("n", "J", "mzJ`z")

-- Netrw
-- map("n", "<leader>e", ":Lex<CR>")

-- neo-tree
map("n", "<leader>e", ":Neotree toggle<CR>", {silent = true})
