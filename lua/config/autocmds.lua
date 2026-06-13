local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local group = augroup("auto_mkdir", {})

-- https://vim-jp.org/vim-users-jp/2011/02/20/Hack-202.html
autocmd("BufWritePre", {
	group = group,
	pattern = "*",
	callback = function(event)
		local dir = vim.fs.dirname(event.file)
		local force = vim.v.cmdbang == 1

		if
			vim.fn.isdirectory(dir) == 0
			and (force or vim.fn.confirm('"' .. dir .. '" does not exist. Create?', "&Yes\n&No") == 1)
		then
			vim.fn.mkdir(vim.fn.iconv(dir, vim.opt.encoding:get(), vim.opt.termencoding:get()), "p")
		end
	end,
	desc = "Auto mkdir to save file",
})

-- auto resize splits when the terminal's window is resized
vim.api.nvim_create_autocmd("VimResized", {
	command = "wincmd =",
})

-- format on save
autocmd("BufWritePre", {
	group = augroup("auto_format", {}),
	buffer = bufnr,
	callback = function()
		vim.lsp.buf.format()
	end,
})

-- open help in vertical split
autocmd("FileType", {
	pattern = "help",
	command = "wincmd L",
})

-- restore cursor to file position in previous editing session
autocmd("BufReadPost", {
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		local line_count = vim.api.nvim_buf_line_count(args.buf)
		if mark[1] > 0 and mark[1] <= line_count then
			vim.api.nvim_win_set_cursor(0, mark)
			-- defer centering slightly so it's applied after render
			vim.schedule(function()
				vim.cmd("normal! zz")
			end)
		end
	end,
})
