local config = require("config")

return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    },
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        --mode="tabs",
        mode = "buffers",
            -- stylua: ignore
            close_command = function(n) require("mini.bufremove").delete(n, false) end,
            -- stylua: ignore
            right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        diagnostics_indicator = function(_, _, diag)
          local icons = require("lazyvim.config").icons.diagnostics
          local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            .. (diag.warning and icons.Warn .. diag.warning or "")
          return vim.trim(ret)
        end,
        offsets = {
          --   {
          --     filetype = "neo-tree",
          --     text = "Neo-tree",
          --     highlight = "Directory",
          --     text_align = "left",
          --   },
          {
            filetype = "NvimTree",
            text = "File Explorer",
            text_align = "center",
            padding = 1,
          },
        },
      },
    },
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
    lazy = true,
    cmd = "Neogit",
  },
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {},
    config = config.hop,
  },
  {
    "notjedi/nvim-rooter.lua",
    config = config.nvim_rooter,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "swift",
      },
    },
  },
  {
    "rainbowhxch/accelerated-jk.nvim",
    config = config.move_faster,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim", "hs", "spoon", "ngx" },
              },
              workspace = {
                library = {
                  vim.fn.expand("$VIMRUNTIME/lua"),
                  vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                  "/opt/homebrew/Caskroom/hammerspoon/1.0.0/Hammerspoon.app/Contents/Resources/extensions",
                },
              },
            },
            hint = {
              enable = true,
              setType = false,
              paramType = true,
              paramName = "Disable",
              semicolon = "Disable",
              arrayIndex = "Disable",
            },
          },
        },
        eslint = {},
      },
      setup = {
        eslint = function() end,
      },
    },
  },
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  },
}
