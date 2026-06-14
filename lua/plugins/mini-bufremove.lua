return {
	"https://github.com/nvim-mini/mini.bufremove",
	dependencies = {},
	opts = {},
	config = function()
		require("mini.bufremove").setup()
		vim.api.nvim_create_user_command("Bufdelete", function()
			MiniBufremove.delete()
		end, { desc = "Remove buffer" })
		vim.keymap.set("n", "<leader>bd", function()
			vim.cmd("Bufdelete")
		end)
	end,
}
