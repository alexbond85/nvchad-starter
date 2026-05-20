require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Run mypy on current file
map("n", "<leader>mp", function()
    vim.cmd "!mypy %"
end, { desc = "Run mypy on current file" })

-- DAP (Debugger) keybindings
map(
    "n",
    "<leader>db",
    "<cmd>DapToggleBreakpoint<CR>",
    { desc = "Toggle breakpoint" }
)
map(
    "n",
    "<leader>dc",
    "<cmd>DapContinue<CR>",
    { desc = "Start/Continue debugging" }
)
map("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Step into" })
map("n", "<leader>do", "<cmd>DapStepOver<CR>", { desc = "Step over" })
map("n", "<leader>dO", "<cmd>DapStepOut<CR>", { desc = "Step out" })
map(
    "n",
    "<leader>dt",
    "<cmd>DapTerminate<CR>",
    { desc = "Terminate debugging" }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<D-/>", function()
    require("Comment.api").toggle.linewise.current()
    vim.cmd "normal! j"
end, { desc = "Comment line and move down" })
vim.keymap.set(
    "n",
    "gi",
    vim.lsp.buf.implementation,
    { desc = "Go to implementation" }
)

vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

vim.keymap.set(
    "n",
    "<leader>gb",
    ":Gitsigns blame_line<CR>",
    { desc = "Git blame line" }
)
vim.keymap.set(
    "n",
    "<leader>gp",
    ":Gitsigns preview_hunk<CR>",
    { desc = "Git preview hunk" }
)
vim.keymap.set("n", "]h", ":Gitsigns next_hunk<CR>", { desc = "Next hunk" })
vim.keymap.set("n", "[h", ":Gitsigns prev_hunk<CR>", { desc = "Prev hunk" })

vim.keymap.set(
    "n",
    "<leader>gd",
    ":DiffviewOpen main<CR>",
    { desc = "Diff vs main" }
)
vim.keymap.set("n", "<leader>gD", ":DiffviewClose<CR>", { desc = "Close diff" })
vim.keymap.set("n", "<leader>gB", ":Git blame<CR>", { desc = "Git blame file" })
vim.keymap.set("n", "<leader>fd", function()
    require("telescope.builtin").find_files {
        find_command = { "fd", "--type", "d", "--hidden", "--exclude", ".git" },
        prompt_title = "Find Directories",
        attach_mappings = function(_, map)
            local actions = require "telescope.actions"
            local action_state = require "telescope.actions.state"

            actions.select_default:replace(function(prompt_bufnr)
                local selection = action_state.get_selected_entry()
                actions.close(prompt_bufnr)
                require("nvim-tree.api").tree.open()
                require("nvim-tree.api").tree.find_file(selection.value)
            end)

            return true
        end,
    }
end)
vim.keymap.set("n", "<leader>ff", function()
    require("telescope.builtin").find_files {
        find_command = {
            "fd",
            "--type",
            "f",
            "--hidden",
            "--exclude",
            ".git",
            "--exclude",
            ".venv",
            "--exclude",
            ".virtualenv",
        },
    }
end)
