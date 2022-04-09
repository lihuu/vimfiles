local lang = {}
local conf = require('modules.lang.config')

-- https://github.com/fatih/vim-go
lang['fatih/vim-go'] = {
     opt = true,
     ft = 'go',
     run = ':GoInstallBinaries',
     config = conf.lang_go
 }

-- https://github.com/rust-lang/rust.vim
lang['rust-lang/rust.vim'] = {
    opt = true,
    ft = "rust"
}

-- https://github.com/simrat39/rust-tools.nvim
lang['simrat39/rust-tools.nvim'] = {
    opt = true,
    ft = "rust",
    config = conf.rust_tools
}

-- https://github.com/kristijanhusak/orgmode.nvim
lang['kristijanhusak/orgmode.nvim'] = {
    opt = true,
    ft = "org",
    after = "nvim-treesitter",
    config = conf.lang_org
}

-- https://github.com/iamcco/markdown-preview.nvim
lang['iamcco/markdown-preview.nvim'] = {
    opt = true,
    ft = "markdown",
    run = 'cd app && yarn install'
}

return lang
