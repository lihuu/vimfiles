local config = require("config")

return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = "NvimTreeToggle",
    keys = { { "<leader>fe", "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" } },
    config = config.nvim_tree,
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
}
