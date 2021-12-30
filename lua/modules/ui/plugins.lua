local ui = {}
local conf = require('modules.ui.config')
local global = require('core.global')
local commits = require('modules.commits')

ui['kyazdani42/nvim-web-devicons'] = {opt = false}

ui['sainnhe/edge'] = {opt = false, config = conf.edge}
--底部的状态栏
ui['hoob3rt/lualine.nvim'] = {
    opt = true,
    after = 'nvim-gps',
    config = conf.lualine
}
ui['mhinz/vim-startify'] = {opt = true, event = "BufWinEnter"}
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

ui['lewis6991/gitsigns.nvim'] = {
    opt = true,
    event = {'BufRead', 'BufNewFile'},
    config = conf.gitsigns,
    commit = commits.gitsigns,
    requires = {'nvim-lua/plenary.nvim', opt = true}
}

ui['lukas-reineke/indent-blankline.nvim'] = {
    opt = true,
    event = 'BufRead',
    config = conf.indent_blankline
}
ui['akinsho/nvim-bufferline.lua'] = {
    opt = true,
    event = 'BufRead',
    commit = commits.nvim_bufferline,
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

ui['kevinhwang91/nvim-bqf'] = {
    opt=true,
    ft="qf",
    config = conf.bqf
}

ui['folke/todo-comments.nvim'] = {
    opt=true,
    ft={'lua','javascript','java','typescript','typescriptreact','javascript','javascriptreact'},
    config= function ()
        require("todo-comments").setup({
            signs = true, -- show icons in the signs column
            sign_priority = 8, -- sign priority
            -- keywords recognized as todo comments
            keywords = {
                FIX = {
                    icon = " ", -- icon used for the sign, and in search results
                    color = "error", -- can be a hex color, or a named color (see below)
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
                    -- signs = false, -- configure signs for some keywords individually
                },
                TODO = { icon = " ", color = "info" },
                HACK = { icon = " ", color = "warning" },
                WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
                PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
            },
            merge_keywords = true, -- when true, custom keywords will be merged with the defaults
            -- highlighting of the line containing the todo comment
            -- * before: highlights before the keyword (typically comment characters)
            -- * keyword: highlights of the keyword
            -- * after: highlights after the keyword (todo text)
            highlight = {
                before = "", -- "fg" or "bg" or empty
                keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
                after = "fg", -- "fg" or "bg" or empty
                pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
                comments_only = true, -- uses treesitter to match keywords in comments only
                max_line_len = 400, -- ignore lines longer than this
                exclude = {}, -- list of file types to exclude highlighting
            },
            -- list of named colors where we try to extract the guifg from the
            -- list of hilight groups or use the hex color if hl not found as a fallback
            colors = {
                error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
                warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
                info = { "DiagnosticInfo", "#2563EB" },
                hint = { "DiagnosticHint", "#10B981" },
                default = { "Identifier", "#7C3AED" },
            },
            search = {
                command = "rg",
                args = {
                    "--color=never",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                },
                -- regex that will be used to match keywords.
                -- don't replace the (KEYWORDS) placeholder
                pattern = [[\b(KEYWORDS):]], -- ripgrep regex
                -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
            },
        })
    end
}

return ui
