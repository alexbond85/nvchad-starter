require "nvchad.autocmds"
vim.opt.updatetime = 1000 -- 1 second idle

vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
    pattern = "*",
    callback = function()
        if vim.bo.modified and vim.bo.buftype == "" then
            vim.cmd "silent! write"
        end
    end,
})
