local editor = {}
local conf = require('modules.editor.config')
local commits = require('modules.commits')

-- https://github.com/junegunn/vim-easy-align
editor['junegunn/vim-easy-align'] = {
    opt = true, 
    cmd = 'EasyAlign'
}

-- https://github.com/itchyny/vim-cursorword
editor['itchyny/vim-cursorword'] = {
    opt = true,
    event = {'BufReadPre', 'BufNewFile'},
    config = conf.vim_cursorwod
}

-- https://github.com/terrortylor/nvim-comment
editor['terrortylor/nvim-comment'] = {
    opt = false,
    config = function() require('nvim_comment').setup({
        hook = function()
            require("ts_context_commentstring.internal").update_commentstring()
        end,
    }) end
}

-- https://github.com/simrat39/symbols-outline.nvim
editor['simrat39/symbols-outline.nvim'] = {
    opt = true,
    cmd = {'SymbolsOutline', 'SymbolsOulineOpen'},
    config = conf.symbols_outline
}

-- https://github.com/nvim-treesitter/nvim-treesitter
editor['nvim-treesitter/nvim-treesitter'] = {
    opt = true,
    run = ':TSUpdate',
    event = 'BufRead',
    config = conf.nvim_treesitter,
    commit = commits.nvim_treesitter
}

-- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
editor['nvim-treesitter/nvim-treesitter-textobjects'] = {
    opt = true,
    after = 'nvim-treesitter'
}

-- https://github.com/romgrk/nvim-treesitter-context
editor['romgrk/nvim-treesitter-context'] = {
    opt = true,
    after = 'nvim-treesitter'
}

-- https://github.com/p00f/nvim-ts-rainbow
editor['p00f/nvim-ts-rainbow'] = {
    opt = true,
    after = 'nvim-treesitter',
    event = 'BufRead'
}

-- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
editor['JoosepAlviste/nvim-ts-context-commentstring'] = {
    opt = true,
    after = 'nvim-treesitter'
}

-- https://github.com/SmiteshP/nvim-gps
editor['SmiteshP/nvim-gps'] = {
    opt = true,
    after = 'nvim-treesitter',
    config = conf.nvim_gps
}

-- https://github.com/sbdchd/neoformat
editor['sbdchd/neoformat'] = {
    opt = true, 
    cmd = 'Neoformat'
}

-- https://github.com/windwp/nvim-ts-autotag
editor['windwp/nvim-ts-autotag'] = {
    opt = true,
    after = 'nvim-treesitter',
    ft = {'html', 'xml','javascriptreact','typescriptreact','javascript'},
    config=conf.autotag
}

-- https://github.com/andymass/vim-matchup
editor['andymass/vim-matchup'] = {
    opt = true,
    after = 'nvim-treesitter',
    config = conf.matchup,
    commit=commits.matchup
}

-- https://github.com/rhysd/accelerated-jk
editor['rhysd/accelerated-jk'] = {
    opt = true
}

-- https://github.com/hrsh7th/vim-eft
editor['hrsh7th/vim-eft'] = {
    opt = true
}

-- https://github.com/romainl/vim-cool
editor['romainl/vim-cool'] = {
    opt = true,
    event = {'CursorMoved', 'InsertEnter'}
}

-- https://github.com/easymotion/vim-easymotion
editor['easymotion/vim-easymotion'] = {
    opt = true, 
    config = conf.easymotion
}

-- https://github.com/karb94/neoscroll.nvim
editor['karb94/neoscroll.nvim'] = {
    opt = true,
    event = "WinScrolled",
    config = conf.neoscroll
}

-- https://github.com/vimlab/split-term.vim
editor['vimlab/split-term.vim'] = {
    opt = true, 
    cmd = {'Term', 'VTerm'}
}

-- https://github.com/akinsho/nvim-toggleterm.lua
editor['akinsho/nvim-toggleterm.lua'] = {
    opt = true,
    event = 'BufRead',
    config = conf.toggleterm
}

-- https://github.com/norcalli/nvim-colorizer.lua
editor['norcalli/nvim-colorizer.lua'] = {
    opt = true,
    event = 'BufRead',
    config = conf.nvim_colorizer
}

-- https://github.com/rmagatti/auto-session
editor['rmagatti/auto-session'] = {
    opt = true,
    cmd = {'SaveSession', 'RestoreSession', 'DeleteSession'},
    config = conf.auto_session
}

-- https://github.com/jdhao/better-escape.vim
editor['jdhao/better-escape.vim'] = {
    opt = true,
    event = 'InsertEnter'
}

-- https://github.com/rcarriga/nvim-dap-ui
editor['rcarriga/nvim-dap-ui'] = {
    opt = false,
    config = conf.dapui,
    requires = {
        {'mfussenegger/nvim-dap', config = conf.dap}, {
            'Pocco81/DAPInstall.nvim',
            opt = true,
            cmd = {'DIInstall', 'DIUninstall', 'DIList'},
            config = conf.dapinstall
        },
        {
            'jbyuki/one-small-step-for-vimkind',
            opt=true,
            ft='lua'
        }
    }
}

-- https://github.com/airblade/vim-rooter
editor['airblade/vim-rooter']={
    opt=false
}

return editor
