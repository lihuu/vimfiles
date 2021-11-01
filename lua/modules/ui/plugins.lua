local ui = {}
local conf = require('modules.ui.config')
local global = require('core.global')

ui['kyazdani42/nvim-web-devicons'] = {opt = false}
ui['sainnhe/edge'] = {opt = false, config = conf.edge}
ui['hoob3rt/lualine.nvim'] = {
    opt = true,
    after = 'nvim-gps',
    config = conf.lualine
}
ui['mhinz/vim-startify'] = {opt = true, event = "BufWinEnter"}
ui['kyazdani42/nvim-tree.lua'] = {
    opt = true,
    cmd = {'NvimTreeToggle', 'NvimTreeOpen'},
    config = conf.nvim_tree
}
if global.is_windows then
  ui['airblade/vim-gitgutter'] = {
    opt=true,
    event = {'BufRead', 'BufNewFile'},
  }
else
    -- windows 平台不能使用
 ui['lewis6991/gitsigns.nvim'] = {
     opt = true,
     event = {'BufRead', 'BufNewFile'},
     config = conf.gitsigns,
     requires = {'nvim-lua/plenary.nvim', opt = true}
}

end

ui['lukas-reineke/indent-blankline.nvim'] = {
    opt = true,
    event = 'BufRead',
    config = conf.indent_blankline
}
ui['akinsho/nvim-bufferline.lua'] = {
    opt = true,
    event = 'BufRead',
    config = conf.nvim_bufferline
}
ui['folke/zen-mode.nvim'] = {
    opt = true,
    cmd = 'ZenMode',
    config = conf.zen_mode
}
ui['folke/twilight.nvim'] = {
    opt = true,
    cmd = {'Twilight', 'TwilightEnable'},
    config = conf.twilight
}

return ui
