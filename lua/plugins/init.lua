return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    -- DAP (Debugger)
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "mfussenegger/nvim-dap-python",
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            require "configs.dap"
        end,
    },

    -- test new blink
    -- { import = "nvchad.blink.lazyspec" },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
                "python",
                "markdown",
                "markdown_inline",
            },
        },
    },
    -- add neo tree
    -- {
    --     "nvim-neo-tree/neo-tree.nvim",
    --     branch = "v3.x",
    --     dependencies = {
    --         "nvim-lua/plenary.nvim",
    --         "nvim-tree/nvim-web-devicons",
    --         "MunifTanjim/nui.nvim",
    --     },
    --     cmd = "Neotree",
    --     keys = {
    --         {
    --             "<leader>e",
    --             "<cmd>Neotree toggle<cr>",
    --             desc = "Toggle Neo-tree",
    --         },
    --         { "<C-n>", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
    --     },
    --     opts = {
    --         filesystem = {
    --             follow_current_file = { enabled = true },
    --             hijack_netrw_behavior = "open_current",
    --             filtered_items = {
    --                 visible = true,
    --             },
    --             find_by_full_path_words = true,
    --         },
    --         window = {
    --             mappings = {
    --                 ["/"] = "fuzzy_finder",
    --             },
    --         },
    --     },
    -- },
}
