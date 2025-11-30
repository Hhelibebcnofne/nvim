local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local group = augroup("auto_mkdir", {})

autocmd('BufWritePre', {
  group = group,
  pattern = '*',
  callback = function(event)
    local dir = vim.fs.dirname(event.file)
    local force = vim.v.cmdbang == 1

    if vim.fn.isdirectory(dir) == 0
      and (force or vim.fn.confirm('"' .. dir .. '" does not exist. Create?', "&Yes\n&No") == 1)
    then
      vim.fn.mkdir(
        vim.fn.iconv(dir, vim.opt.encoding:get(), vim.opt.termencoding:get()),
        'p'
      )
    end
  end,
  desc = 'Auto mkdir to save file',
})

