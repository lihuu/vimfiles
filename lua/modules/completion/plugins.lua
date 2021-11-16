local completion = {}
local conf = require('modules.completion.config')

completion['neovim/nvim-lspconfig'] = {
    opt = true,
    event = 'BufReadPre',
    config = conf.nvim_lsp
}
--https://github.com/kabouzeid/nvim-lspinstall
--completion['kabouzeid/nvim-lspinstall'] = {opt = true, after = 'nvim-lspconfig'}
--
--

--https://github.com/williamboman/nvim-lsp-installer
completion['williamboman/nvim-lsp-installer'] = {opt = true, after = 'nvim-lspconfig'}
--https://github.com/glepnir/lspsaga.nvim
completion['glepnir/lspsaga.nvim'] = {
    opt = true,
    after = 'nvim-lspconfig',
}
--显示方法、函数的签名
completion['ray-x/lsp_signature.nvim'] = {opt = true, after = 'nvim-lspconfig'}
--补全
completion['hrsh7th/nvim-cmp'] = {
    config = conf.cmp,
    event = 'InsertEnter',
    requires = {
        {'saadparwaiz1/cmp_luasnip', after = 'LuaSnip'},
        {'hrsh7th/cmp-buffer', after = 'cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp', after = 'cmp-buffer'},
        {'hrsh7th/cmp-nvim-lua', after = 'cmp-nvim-lsp'},
        {'andersevenrud/compe-tmux', branch = 'cmp', after = 'cmp-nvim-lua'},
        {'hrsh7th/cmp-path', after = 'compe-tmux'},
        {'f3fora/cmp-spell', after = 'cmp-path'}
        -- {
        --     'tzachar/cmp-tabnine',
        --     run = './install.sh',
        --     after = 'cmp-spell',
        --     config = conf.tabnine
        -- }
    }
}
completion['L3MON4D3/LuaSnip'] = {
    after = 'nvim-cmp',
    config = conf.luasnip,
    requires = 'rafamadriz/friendly-snippets'
}
completion['windwp/nvim-autopairs'] = {
    after = 'nvim-cmp',
    config = conf.autopairs
}
completion['github/copilot.vim'] = {
    opt = true,
    cmd = "Copilot"
}

--completion['jose-elias-alvarez/nvim-lsp-ts-utils'] = {
--    opt=true,
--    after='nvim-lspconfig',
--    requires={{'jose-elias-alvarez/null-ls.nvim',config=conf.nullls},'nvim-lua/plenary.nvim'},
--}


return completion
