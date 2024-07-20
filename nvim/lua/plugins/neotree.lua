return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  opts = {
    filesystem = {
      -- the magic sauce
      components = {
        name = function(config, node, state)
          local components = require("neo-tree.sources.common.components")
          local name = components.name(config, node, state)
          if node:get_depth() == 1 then
            name.text = vim.fn.pathshorten(name.text, 2)
          end
          return name
        end,
      },
    },
  },
}
