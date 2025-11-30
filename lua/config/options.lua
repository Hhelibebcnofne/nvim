local opt = vim.opt

opt.belloff = "all"
opt.hidden = true

-- number
opt.number = true
-- opt.relativenumber = true

-- tab settings
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.softtabstop = 4

-- grep setting
opt.grepprg="rg --vimgrep"

-- color
opt.termguicolors = true

-- files
-- opt.undofile = true
-- opt.writebackup = true
-- opt.backup = true

-- splitting
opt.splitbelow = true
opt.splitright = true
opt.cursorline = true

-- netrw
vim.g.netrw_preview = 1
vim.g.netrw_liststyle = 3
-- vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

