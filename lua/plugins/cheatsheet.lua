return {
	"https://github.com/sudormrfbin/cheatsheet.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/popup.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>?", function()
			vim.api.nvim_command("Cheatsheet")
		end, { desc = "Open cheat sheet" })
	end,
}
