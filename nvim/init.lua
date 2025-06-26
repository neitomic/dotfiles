-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fd", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
vim.keymap.set("n", "<leader>fl", telescope_builtin.lsp_dynamic_workspace_symbols, {})

vim.keymap.set("n", "<leader>fa", function()
  telescope_builtin.find_files({ follow = true, no_ignore = true, hidden = true })
end, { desc = "Find all files including ignored and hidden" })

require("toggleterm").setup({
  open_mapping = [[<c-\>]],
  direction = "float",
})

vim.keymap.set("n", "<C-\\>", function()
  vim.cmd([[ ToggleTerm ]])
end)

vim.filetype.add({
  extension = {
    zkasm = "asm",
  },
})
