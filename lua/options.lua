require "nvchad.options"
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "checktime",
})
-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
