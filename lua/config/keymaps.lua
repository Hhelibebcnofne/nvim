local map = vim.keymap.set

-- スペースをリーダーキーに
vim.g.mapleader = " "

-- close buffer
-- map("n", "<leader>bd", function()
-- 	vim.cmd("bprevious")
-- 	vim.cmd("bdelete #")
-- end)

-- leader save
map("n", "<leader>w", ":w<CR>", { silent = true })
map("n", "<leader>q", ":q<CR>", { silent = true })

-- clist
map("n", "<leader><C-j>", ":cnext<CR>", { silent = true })
map("n", "<leader><C-k>", ":cprev<CR>", { silent = true })
map("n", "<leader>c", ":cw<CR>", { silent = true })

-- moving
map("n", "J", "mzJ`z")

-- Netrw
-- map("n", "<leader>e", ":Lex<CR>")

-- neo-tree
map("n", "<leader>e", ":Neotree toggle<CR>", { silent = true })

-- todo.txt
map("n", "<leader>td", "0ix 0wWyWP0", { silent = true })

-- yank all
map("n", "<leader>ya", 'mmgg"+yG`m', { silent = true })

map("n", "<leader>qr", function()
	vim.api.nvim_command("restart")
end, {})

-- emacs like movement in commandline
vim.keymap.set("c", "<c-b>", "<left>", { desc = "Emacs like left" })
vim.keymap.set("c", "<c-f>", "<right>", { desc = "Emacs like right" })
vim.keymap.set("c", "<c-a>", "<home>", { desc = "Emacs like home" })
vim.keymap.set("c", "<c-e>", "<end>", { desc = "Emacs like end" })
vim.keymap.set("c", "<c-h>", "<bs>", { desc = "Emacs like bs" })
vim.keymap.set("c", "<c-d>", "<del>", { desc = "Emacs like del" })
