local user_command = vim.api.nvim_create_user_command
local nvim_command = vim.api.nvim_command

user_command("RunCpp", function()
	vim.cmd("!g++ -O3 % -o %< && %<")
end, {})
