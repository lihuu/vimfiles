local config = require("config")
local logos = require("core.logo")

return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = "NvimTreeToggle",
    keys = { { "<leader>fe", "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" } },
    config = config.nvim_tree,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      opts.config.header = logos.lihuvim
    end,
  },
}
