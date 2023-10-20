local ui = {}
local conf = require('modules.ui.config')
local global = require('core.global')
local commits = require('modules.commits')

-- https://github.com/kyazdani42/nvim-web-devicons
ui['kyazdani42/nvim-web-devicons'] = {
  opt = false,
  commit = commits.web_devicons
}

-- 主题
-- https://github.com/sainnhe/edge
ui['sainnhe/edge'] = {opt = false, config = conf.edge, commit = commits.edge}
-- 底部的状态栏
-- https://github.com/nvim-lualine/lualine.nvim
ui['hoob3rt/lualine.nvim'] = {
  opt = true,
  after = 'nvim-gps',
  config = conf.lualine,
  commit = commits.lualine
}

--ui['navarasu/onedark.nvim'] = {opt = false, config = conf.onedark}

-- https://github.com/mhinz/vim-startify
ui['mhinz/vim-startify'] = {
  opt = true,
  event = "BufWinEnter",
  commit = commits.vim_statify
}

-- https://github.com/kyazdani42/nvim-tree.lua
ui['kyazdani42/nvim-tree.lua'] = {
  opt = true,
  cmd = {'NvimTreeToggle', 'NvimTreeOpen'},
  config = conf.nvim_tree,
  commit = commits.nvim_tree
}

--[[
ui['airblade/vim-gitgutter'] = {
opt=true,
event = {'BufRead', 'BufNewFile'},
}
--]]

-- https://github.com/lewis6991/gitsigns.nvim
ui['lewis6991/gitsigns.nvim'] = {
  opt = true,
  event = {'BufRead', 'BufNewFile'},
  config = conf.gitsigns,
  requires = {'nvim-lua/plenary.nvim', opt = true},
  commit = commits.gitsigns
}

-- https://github.com/lukas-reineke/indent-blankline.nvim
ui['lukas-reineke/indent-blankline.nvim'] = {
  opt = true,
  event = 'BufRead',
  config = conf.indent_blankline,
  commit = commits.indent_blankline
}
ui['akinsho/nvim-bufferline.lua'] = {
  opt = true,
  event = 'BufRead',
  commit = commits.nvim_bufferline,
  config = conf.nvim_bufferline
}
-- https://github.com/folke/zen-mode.nvim
ui['folke/zen-mode.nvim'] = {
  opt = true,
  cmd = 'ZenMode',
  config = conf.zen_mode,
  commit = commits.zen_mode
}

-- https://github.com/folke/twilight.nvim
ui['folke/twilight.nvim'] = {
  opt = true,
  cmd = {'Twilight', 'TwilightEnable'},
  config = conf.twilight,
  commit = commits.twilight
}

-- https://github.com/kevinhwang91/nvim-bqf
ui['kevinhwang91/nvim-bqf'] = {
  opt = true,
  ft = "qf",
  config = conf.bqf,
  commit = commits.bqf
}

-- https://github.com/folke/todo-comments.nvim
ui['folke/todo-comments.nvim'] = {
  opt = true,
  ft = {
    'lua', 'javascript', 'java', 'typescript', 'typescriptreact', 'javascript',
    'javascriptreact'
  },
  commit = commits.todo_comments,
  config = conf.todo_comments
}

ui['rcarriga/nvim-notify'] = {
  opt = false,
  config = function()
    require("notify").setup({
      -- Minimum level to show
      level = "info",

      -- Animation style (see below for details)
      stages = "fade_in_slide_out",

      -- Function called when a new window is opened, use for changing win settings/config
      on_open = nil,

      -- Function called when a window is closed
      on_close = nil,

      -- Render function for notifications. See notify-render()
      render = "default",

      -- Default timeout for notifications
      timeout = 5000,

      -- Max number of columns for messages
      max_width = nil,
      -- Max number of lines for a message
      max_height = nil,

      -- For stages that change opacity this is treated as the highlight behind the window
      -- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
      background_colour = "Normal",

      -- Minimum width for notification windows
      minimum_width = 50,

      -- Icons for the different levels
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎"
      }
    })
  end
}

return ui

