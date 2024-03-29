local completion = {}
local conf = require('modules.completion.config')
local commits = require('modules.commits')

-- https://github.com/neovim/nvim-lspconfig
completion['neovim/nvim-lspconfig'] = {
  opt = true,
  event = 'BufReadPost',
  config = conf.nvim_lsp,
  commit = commits.nvim_lspconfig
}

-- https://github.com/williamboman/nvim-lsp-installer
completion['lihuu/nvim-lsp-installer'] = {
  opt = true,
  after = 'nvim-lspconfig'
  -- commit = commits.lsp_installer
}

-- https://github.com/glepnir/lspsaga.nvim
completion['glepnir/lspsaga.nvim'] = {
  opt = true,
  after = 'nvim-lspconfig',
  commit = commits.lspsaga
}

-- 显示方法、函数的签名
-- https://github.com/ray-x/lsp_signature.nvim
completion['ray-x/lsp_signature.nvim'] = {
  opt = true,
  after = 'nvim-lspconfig',
  commit = commits.lsp_signature
}
-- 补全
-- https://github.com/hrsh7th/nvim-cmp
completion['hrsh7th/nvim-cmp'] = {
  config = conf.cmp,
  event = 'InsertEnter',
  requires = {
    { 'saadparwaiz1/cmp_luasnip', after = 'LuaSnip' },
    { 'hrsh7th/cmp-buffer',       after = 'cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp',     after = 'cmp-buffer' },
    { 'hrsh7th/cmp-nvim-lua',     after = 'cmp-nvim-lsp' },
    { 'andersevenrud/cmp-tmux',   branch = 'compe',      after = 'cmp-nvim-lua' },
    { 'hrsh7th/cmp-path',         after = 'cmp-tmux' },
    { 'f3fora/cmp-spell',         after = 'cmp-path' }
  }
}

-- https://github.com/L3MON4D3/LuaSnip
completion['L3MON4D3/LuaSnip'] = {
  after = 'nvim-cmp',
  config = conf.luasnip,
  requires = 'rafamadriz/friendly-snippets',
  commit = commits.LuaSnip
}

-- https://github.com/windwp/nvim-autopairs
completion['windwp/nvim-autopairs'] = {
  after = 'nvim-cmp',
  config = conf.autopairs,
  commit = commits.autopairs
}

--[[
completion['github/copilot.vim'] = {
opt = true,
cmd = "Copilot"
}
--]]
--[[completion['jose-elias-alvarez/nvim-lsp-ts-utils'] = {
opt=true,
after='nvim-lspconfig',
requires={{'jose-elias-alvarez/null-ls.nvim',config=conf.nullls},'nvim-lua/plenary.nvim'},
}
--]]
return completion
