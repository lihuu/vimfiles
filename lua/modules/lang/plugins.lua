--[[
Author: lihu
Date: 2021-10-31 16:59:58
LastEditors: lihu
LastEditTime: 2021-10-31 19:17:06
FilePath: \vimfiles\lua\modules\lang\plugins.lua
--]]
local lang = {}
local conf = require('modules.lang.config')

lang['fatih/vim-go'] = {
     opt = true,
     ft = 'go',
     run = ':GoInstallBinaries',
     config = conf.lang_go
 }
lang['rust-lang/rust.vim'] = {opt = true, ft = "rust"}
lang['simrat39/rust-tools.nvim'] = {
    opt = true,
    ft = "rust",
    config = conf.rust_tools
}
lang['kristijanhusak/orgmode.nvim'] = {
    opt = true,
    ft = "org",
    config = conf.lang_org
}
lang['iamcco/markdown-preview.nvim'] = {
    opt = true,
    ft = "markdown",
    run = 'cd app && yarn install'
}
return lang
