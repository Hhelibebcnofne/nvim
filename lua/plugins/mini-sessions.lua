return {
	"https://github.com/nvim-mini/mini.sessions",
	dependencies = { "mini.starter" },
	opts = {},
	config = function(_, opts)
		require("mini.sessions").setup()
	end,
	lazy = false,
}
