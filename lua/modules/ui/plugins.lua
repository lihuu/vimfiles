local ui = {}
local conf = require('modules.ui.config')
local global = require('core.global')
local commits = require('modules.commits')

-- https://github.com/kyazdani42/nvim-web-devicons
ui['kyazdani42/nvim-web-devicons'] = {
    opt = false,
    commit = commits.web_devicons
}

-- https://github.com/sainnhe/edge
ui['sainnhe/edge'] = {
    opt = false,
    config = conf.edge,
    commit = commits.edge
}
--底部的状态栏
-- https://github.com/nvim-lualine/lualine.nvim
ui['hoob3rt/lualine.nvim'] = {
    opt = true,
    after = 'nvim-gps',
    config = conf.lualine,
    commit = commits.lualine
}

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
--[[
--
ui['akinsho/nvim-bufferline.lua'] = {
    opt = true,
    event = 'BufRead',
    commit = commits.nvim_bufferline,
    config = conf.nvim_bufferline
}
--]]
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
    opt=true,
    ft="qf",
    config = conf.bqf,
    commit = commits.bqf
}

-- https://github.com/folke/todo-comments.nvim
ui['folke/todo-comments.nvim'] = {
    opt=true,
    ft={'lua','javascript','java','typescript','typescriptreact','javascript','javascriptreact'},
    commit = commits.todo_comments,
    config= conf.todo_comments
}

return ui
