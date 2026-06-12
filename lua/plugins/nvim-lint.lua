return {
	"https://github.com/mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			python = { "ruff" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			bash = { "shellcheck" },
			sh = { "shellcheck" },
			lua = { "luacheck" },
			markdown = { "cspell" },
		}
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
