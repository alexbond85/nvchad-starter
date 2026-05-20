# Neovim Config

Built on [NvChad v2.5](https://github.com/NvChad/NvChad). Customized for Python development.

## Editor

- **Theme:** `ashes`
- **Relative line numbers**
- **Auto-save** — writes on 1s idle (`CursorHold`)
- **Fold & cursor persistence** — restored when re-opening files
- **Auto-reload** — checks for external file changes on focus
- **Scroll:** `C-d`/`C-u` move 10 lines and re-center the viewport
- **JSONL** files treated as JSON

## LSP

Servers: `pyright`, `html`, `cssls`

| Key | Action |
|-----|--------|
| `K` | Hover docs |
| `gi` | Go to implementation |
| `gr` | Find references (Telescope) |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |

## Formatting (conform.nvim)

Formats on save:
- Python → `ruff_format`
- Lua → `stylua`

Manual: `<leader>fm`

## Navigation

**flash.nvim** — jump anywhere on screen by typing 2–3 chars

| Key | Mode | Action |
|-----|------|--------|
| `s` | n/x/o | Jump |
| `S` | n/x/o | Treesitter jump |
| `r` | o | Remote flash |
| `R` | o/x | Treesitter search |
| `<C-s>` | c | Toggle flash |

**nvim-tree** — git-ignored files are shown; Flash works inside the tree buffer

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle tree (reveals current file) |
| `<leader>ff` | Find files (hidden, excludes `.venv`) |
| `<leader>fd` | Find directory, reveal in tree |

## Python Debugging (DAP)

Auto-opens/closes the debug UI on session start/end. Uses a dedicated `debugpy` venv.

```sh
python -m venv ~/.virtualenvs/debugpy
~/.virtualenvs/debugpy/bin/pip install debugpy
```

| Key | Action |
|-----|--------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Start / Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>dt` | Terminate |
| `<leader>mp` | Run mypy on current file |

## Git

| Key | Action |
|-----|--------|
| `<leader>gb` | Blame current line (gitsigns) |
| `<leader>gp` | Preview hunk |
| `]h` / `[h` | Next / prev hunk |
| `<leader>gd` | Diffview vs `main` |
| `<leader>gD` | Close diffview |
| `<leader>gB` | Full file blame (fugitive) |
| `<leader>lg` | LazyGit (floaterm) |

Gitsigns diff base is set to `origin/main`.

## Other Mappings

| Key | Action |
|-----|--------|
| `;` | Enter command mode |
| `jj` | Escape to normal |
| `<leader>w` | Save |
| `\|` | Vertical split |
| `<C-a>` | Select all |
| `<D-/>` | Comment line, move down |
| `<leader>vf` | Vifm in float |

## Plugins

| Plugin | Purpose |
|--------|---------|
| [NvChad/NvChad](https://github.com/NvChad/NvChad) | Base config |
| [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP |
| [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax |
| [folke/flash.nvim](https://github.com/folke/flash.nvim) | Motion / jump |
| [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debugger |
| [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python) | Python debug adapter |
| [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | Debug UI |
| [MeanderingProgrammer/render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | Markdown rendering |
| [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) | File tree |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) | Git commands |
| [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim) | Diff viewer |
| [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) | LazyGit integration |
| [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm) | Floating terminal |
| [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim) | Better input/select UI |
