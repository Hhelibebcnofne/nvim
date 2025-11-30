require("config.autocmds")
require("config.commands")
require("config.highlights")
require("config.keymaps")
require("config.options")
require("config.lazy")

if vim.g.vscode then
  cmdheight = 1 -- this is the new line I added
  return
end
