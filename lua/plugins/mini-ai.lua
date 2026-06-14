return {
	"https://github.com/nvim-mini/mini.ai",
	dependencies = { "https://github.com/nvim-mini/mini.extra" },
	opts = {},
	config = function(_, opts)
		local gen_ai_spec = require("mini.extra").gen_ai_spec
		require("mini.ai").setup({
			custom_textobjects = {
				B = gen_ai_spec.buffer(),
				D = gen_ai_spec.diagnostic(),
				I = gen_ai_spec.indent(),
				L = gen_ai_spec.line(),
				N = gen_ai_spec.number(),
				J = { { "()%d%d%d%d%-%d%d%-%d%d()", "()%d%d%d%d%/%d%d%/%d%d()" } },
			},
		})
	end,
}
