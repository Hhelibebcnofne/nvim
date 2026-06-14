return {
	"https://github.com/nvim-mini/mini.misc",
	opts = {},
	config = function(_, opts)
		require("mini.misc").setup(opts)
		require("mini.misc").setup_restore_cursor()
	end,
}
