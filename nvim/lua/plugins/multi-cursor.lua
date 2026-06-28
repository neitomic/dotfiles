return {
  "mg979/vim-visual-multi",
  lazy = false,
  init = function()
    -- Enable mouse mappings for Ctrl + Left Click
    vim.g.VM_mouse_mappings = 1

    -- Customize keybindings to mimic VSCode
    vim.cmd([[
      let g:VM_maps = {}
      let g:VM_maps['Add Cursor Down'] = '<C-Down>'
      let g:VM_maps['Add Cursor Up']   = '<C-Up>'
    ]])
  end,
}
