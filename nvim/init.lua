-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.mouse = "a"

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "markdown",
    "rust",
    "go",
    "python",
    "markdown",
    "markdown_inline",
  },
  modules = {},
  ignore_install = {},
  sync_install = false,
  auto_install = true,
  highlight = {
    enabled = true,
    additional_vim_regex_highlighting = true,
  },
  incremental_selection = {
    enabled = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
})

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fd", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
vim.keymap.set("n", "<leader>fl", telescope_builtin.lsp_dynamic_workspace_symbols, {})
