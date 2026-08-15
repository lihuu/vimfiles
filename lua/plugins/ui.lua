local config = require("config")

return {
  {
    "folke/snacks.nvim",
    keys = {
      -- move notification history from <leader>n to <leader>nn,
      -- freeing up the <leader>n prefix for other keys
      { "<leader>n", false },
      {
        "<leader>nn",
        function()
          if Snacks.config.picker and Snacks.config.picker.enabled then
            Snacks.picker.notifications()
          else
            Snacks.notifier.show_history()
          end
        end,
        desc = "Notification History",
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    keys = {
      { "<leader>nt", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
      { "<leader>ng", "<cmd>Neotree git_status<cr>", desc = "Neo-tree Git Status" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      sources = { "filesystem", "buffers", "git_status" },
      close_if_last_window = false,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true,
          show_hidden = false,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "left",
        width = 30,
        mappings = {
          ["<space>"] = "none",
        },
      },
      default_component_configs = {
        indent = { with_expanders = true },
        modified = { symbol = "󰏫" },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false, -- disabled, keep config for reference; neo-tree is now the file manager
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
        mode = "dark",
        -- ⚠️ 如果修改了下面的主题，请确保它们已安装或在 dependencies 中声明
        darkScheme = "tokyonight",
        lightScheme = "dayfox",
        interval = 5000,
        notify = false,
      })
    end,
  },
}
