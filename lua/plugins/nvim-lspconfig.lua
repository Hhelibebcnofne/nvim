return {
	"https://github.com/neovim/nvim-lspconfig",
	event = { "BufNewFile", "BufReadPre" },
	config = function()
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
	end,
}
