-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

-- --@type ChadrcConfig
local M = {}
M.ui = {
    statusline = {
        theme = "default",
        separator_style = "default",
        order = {
            "mode",
            "file",
            "git",
            "%=",
            "lsp_msg",
            "%=",
            "diagnostics",
            "lsp",
            "cursor",
            "cwd",
        },
        modules = {
            cursor = function()
                return vim.fn.line "." .. "/" .. vim.fn.line "$" .. " :%2c"
            end,
        },
    },
}
M.base46 = {
    theme = "ashes",

    -- hl_override = {
    -- 	Comment = { italic = true },
    -- 	["@comment"] = { italic = true },
    -- },
}
-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

-- M.plugins = {
--     ["nvim-tree/nvim-tree.lua"] = { enabled = false },
-- }

return M
