return {
	"https://github.com/stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>fm",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
		{
			"<leader>ft",
			function()
				vim.g.autoformat = not vim.g.autoformat
				vim.notify("Global autoformat: " .. tostring(vim.g.autoformat))
			end,
			desc = "Toggle global autoformat",
		},
		{
			"<leader>fT",
			function()
				vim.b.autoformat = not vim.b.autoformat
				vim.notify("Buffer autoformat: " .. tostring(vim.b.autoformat))
			end,
			desc = "Toggle buffer autoformat",
		},
	},
	-- This will provide type hinting with LuaLS
	---@module "conform"
	---@type conform.setupOpts
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "ruff" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		-- Set default options
		default_format_opts = {
			lsp_format = "fallback",
		},
		-- Set up format-on-save
        format_on_save = function(bufnr)
            if vim.g.autoformat == false then
                return
            end

            if vim.b[bufnr].autoformat == false then
                return
            end

            return {
                timeout_ms = 500,
                lsp_format = "fallback",
            }
        end,
		-- Customize formatters
		formatters = {
			shfmt = {
				append_args = { "-i", "2" },
			},
		},
	},
	init = function()
        vim.g.autoformat = true
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
