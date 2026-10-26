-- useful auto command
local augroup = vim.api.nvim_create_augroup("UserConfig", {})

-- always open help on right, vertical splited
vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = "help",
  callback = function()
    vim.cmd.wincmd("L")
  end,
})
