local map = vim.keymap.set

-- スペースをリーダーキーに
vim.g.mapleader = " "

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
