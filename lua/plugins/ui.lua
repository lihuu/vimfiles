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
  {
    "lihuu/auto-colorscheme.nvim",
    lazy = false, -- 重要：必须设为 false 以便启动时立即检测
    priority = 1000, -- 确保在其他配色插件之前加载
    -- 可选：添加依赖以确保主题插件已被安装
    dependencies = {
      "folke/tokyonight.nvim",
      "EdenEast/nightfox.nvim",
    },

    config = function()
      require("auto-colorscheme").setup({
        mode = "auto",
        -- ⚠️ 如果修改了下面的主题，请确保它们已安装或在 dependencies 中声明
        darkScheme = "tokyonight",
        lightScheme = "dayfox",
      })
    end,
  },
}
