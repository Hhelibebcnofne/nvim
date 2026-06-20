-- @type LazyPluginSpec
return {
	"https://github.com/mason-org/mason-lspconfig.nvim",
	opts = { automatic_enable = true },
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
