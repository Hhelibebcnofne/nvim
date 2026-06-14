return {
	"https://github.com/nvim-mini/mini.starter",
	opts = {},
	config = function(_, opts)
		require("mini.starter").setup()
	end,
	lazy = false,
}
