-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {}
    vim.keymap.set('n', '<C-n>', function() vim.cmd("Neotree action=show toggle=true") end, { desc = "Toggle [N]eotree" })
    vim.api.nvim_set_keymap('n', '<Leader>pv', ':Neotree action=focus<CR>:only<CR>', { noremap = true, silent = true })
  end,
}
