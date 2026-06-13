local user_command = vim.api.nvim_create_user_command
local nvim_command = vim.api.nvim_command

user_command("RunCpp", function()
	vim.cmd("!g++ -O3 % -o %< && %<")
end, { desc = "Compile and run opening cpp file" })

user_command("InitLua", function()
	vim.cmd.edit(vim.fn.stdpath("config") .. "/init.lua")
end, { desc = "Open init.lua" })
