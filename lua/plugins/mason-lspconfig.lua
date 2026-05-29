return {
	"https://github.com/mason-org/mason.nvim",
	event = { "BufNewFile", "BufReadPre" },
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
