-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true, -- disables setting the background color.
})

vim.cmd.colorscheme("catppuccin")

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fd", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
vim.keymap.set("n", "<leader>fl", telescope_builtin.lsp_dynamic_workspace_symbols, {})

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
