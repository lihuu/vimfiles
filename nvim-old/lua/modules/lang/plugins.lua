local lang = {}
local conf = require('modules.lang.config')
local vim = vim

-- https://github.com/fatih/vim-go
lang['fatih/vim-go'] = {
  opt = true,
  ft = 'go',
  run = ':GoInstallBinaries',
  config = conf.lang_go
}

-- https://github.com/rust-lang/rust.vim
--lang['rust-lang/rust.vim'] = {opt = true, ft = "rust"}

-- https://github.com/simrat39/rust-tools.nvim
-- lang['simrat39/rust-tools.nvim'] = {
--   opt = true,
--   ft = "rust",
--   config = conf.rust_tools
-- }

-- https://github.com/kristijanhusak/orgmode.nvim
-- lang['kristijanhusak/orgmode.nvim'] = {
--   opt = true,
--   ft = "org",
--   after = "nvim-treesitter",
--   config = conf.lang_org
-- }

-- https://github.com/iamcco/markdown-preview.nvim
lang['iamcco/markdown-preview.nvim'] = {
  opt = true,
  ft = "markdown",
  run = 'cd app && yarn install'
}

local LuaFormat = function()
  local current_buff = vim.api.nvim_get_current_buf()
  local line_count = vim.api.nvim_buf_line_councurrent_buff()
  local lines = vim.api.nvim_buf_get_lines(current_buff, 0, -1, line_count,
    false)
end

return lang
