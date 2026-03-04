return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform",
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        --- @type Flash.Config
        opts = {},
        keys = {
            {
                "s",
                mode = { "n", "x", "o" },
                function()
                    require("flash").jump()
                end,
                desc = "Flash",
            },
            {
                "S",
                mode = { "n", "x", "o" },
                function()
                    require("flash").treesitter()
                end,
                desc = "Flash Treesitter",
            },
            {
                "r",
                mode = "o",
                function()
                    require("flash").remote()
                end,
                desc = "Remote Flash",
            },
            {
                "R",
                mode = { "o", "x" },
                function()
                    require("flash").treesitter_search()
                end,
                desc = "Treesitter Search",
            },
            {
                "<c-s>",
                mode = { "c" },
                function()
                    require("flash").toggle()
                end,
                desc = "Toggle Flash Search",
            },
        },
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
        lazy = false,
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
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        ft = { "markdown" },
        opts = {},
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
