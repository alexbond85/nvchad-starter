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
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            filters = {
                git_ignored = false,
            },
            on_attach = function(bufnr)
                local api = require "nvim-tree.api"
                api.config.mappings.default_on_attach(bufnr)

                -- free s and o for flash
                vim.keymap.del("n", "s", { buffer = bufnr })
                vim.keymap.del("n", "o", { buffer = bufnr })

                vim.keymap.set("n", "s", function()
                    require("flash").jump()
                end, { buffer = bufnr, desc = "Flash" })

                vim.keymap.set("n", "o", function()
                    require("flash").jump()
                end, { buffer = bufnr, desc = "Flash" })
            end,
        },
    },
    {
        "tpope/vim-fugitive",
        cmd = "Git",
    },
    { "sindrets/diffview.nvim", lazy = false },
    {
        "pwntester/octo.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        cmd = "Octo",
        keys = {
            { "<leader>op", "<cmd>Octo pr list<cr>", desc = "Octo: list PRs" },
            { "<leader>or", "<cmd>Octo review start<cr>", desc = "Octo: start review" },
        },
        opts = {},
    },
    -- lazygit
    {
        "kdheepak/lazygit.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd = "LazyGit",
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
        },
    },
    {
        "sphamba/smear-cursor.nvim",
        event = "VeryLazy",
        opts = {},
    },
    {
        "voldikss/vim-floaterm",
        keys = {
            { "<leader>vf", "<cmd>FloatermNew vifm<cr>", desc = "Vifm" },
            { "<leader>lg", "<cmd>FloatermNew lazygit<cr>", desc = "LazyGit" },
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
