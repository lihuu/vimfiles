local global = require 'core.global'
local vim = vim

-- Create cache dir and subs dir
local createdir = function()
    local data_dir = {
        global.cache_dir .. 'backup', global.cache_dir .. 'session',
        global.cache_dir .. 'swap', global.cache_dir .. 'tags',
        global.cache_dir .. 'undo'
    }
    -- There only check once that If cache_dir exists
    -- Then I don't want to check subs dir exists
    if vim.fn.isdirectory(global.cache_dir) == 0 then
        os.execute("mkdir -p " .. global.cache_dir)
        for _, v in pairs(data_dir) do
            if vim.fn.isdirectory(v) == 0 then
                os.execute("mkdir -p " .. v)
            end
        end
    end
end

local disable_distribution_plugins = function()
    vim.g.loaded_gzip = 1
    vim.g.loaded_tar = 1
    vim.g.loaded_tarPlugin = 1
    vim.g.loaded_zip = 1
    vim.g.loaded_zipPlugin = 1
    vim.g.loaded_getscript = 1
    vim.g.loaded_getscriptPlugin = 1
    vim.g.loaded_vimball = 1
    vim.g.loaded_vimballPlugin = 1
    vim.g.loaded_matchit = 1
    vim.g.loaded_matchparen = 1
    vim.g.loaded_2html_plugin = 1
    vim.g.loaded_logiPat = 1
    vim.g.loaded_rrhelper = 1
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_netrwSettings = 1
    vim.g.loaded_netrwFileHandlers = 1
    vim.g.did_load_filetypes = 1
end

local leader_map = function()
    vim.g.mapleader = " "
    vim.api.nvim_set_keymap('n', ' ', '', {noremap = true})
    vim.api.nvim_set_keymap('x', ' ', '', {noremap = true})
end

local neovim_qt_config = function()
    --vim.cmd [[set guifont=Consolas\ NF:h14]]
    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_cursor_vfx_mode = "railgun"
    vim.g.neovide_no_idle = true
    vim.g.neovide_cursor_animation_length = 0.03
    vim.g.neovide_cursor_trail_length = 0.05
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_vfx_opacity = 200.0
    vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
    vim.g.neovide_cursor_vfx_particle_speed = 20.0
    vim.g.neovide_cursor_vfx_particle_density = 5.0
end

local lihuu_statify_config = function ()
    vim.g.startify_files_number=20
end

local lihuu_qf_config = function ()
    vim.cmd([[
    augroup auto_close_qf
    autocmd!
    autocmd FileType qf nnoremap <buffer><silent> <cr> <cr>:cclose<cr> 
    augroup END
    ]])
end

local lihuu_sqlite_config = function()
    if global.is_windows then
        vim.g.sqlite_clib_path='C:\\ProgramData\\chocoportable\\lib\\SQLite\\tools\\sqlite3.dll'
    end
end

local lihuu_nvim_tree_config = function ()
    vim.g.nvim_tree_gitignore=1
    --"0 by default, closes the tree when you open a file
    vim.g.nvim_tree_quit_on_open = 1
    --"0 by default, this option shows indent markers when folders are open
    vim.g.nvim_tree_indent_markers = 1
    --"0 by default, will enable file highlight for git attributes (can be used without the icons).
    vim.g.nvim_tree_git_hl = 1
    --"0 by default, will enable folder and file icon highlight for opened files/directories.
    vim.g.nvim_tree_highlight_opened_files = 0
    --"This is the default. See :help filename-modifiers for more options
    vim.g.nvim_tree_root_folder_modifier = ':~'
    --"0 by default, append a trailing slash to folder names
    vim.g.nvim_tree_add_trailing = 1
    --" 0 by default, compact folders that only contain a single folder into one node in the file tree
    vim.g.nvim_tree_group_empty = 1
    --"0 by default, will disable the window picker.
    vim.g.nvim_tree_disable_window_picker = 1
    --"one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
    vim.g.nvim_tree_icon_padding = ' '
    --"0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
    vim.g.nvim_tree_respect_buf_cwd = 1
    --"1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
    vim.g.nvim_tree_create_in_closed_folder = 0
    --"1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
    vim.g.nvim_tree_refresh_wait = 500
    vim.g.nvim_tree_window_picker_exclude = { filetype= { 'notify', 'packer', 'qf' }, buftype= { 'terminal' } }
--" Dictionary of buffer option names mapped to a list of option values that
---" indicates to the window picker that the buffer's window should not be
--" selectable.
    --" List of filenames that gets highlighted with NvimTreeSpecialFile
    vim.g.nvim_tree_special_files = { README= 1, Makefile= 1, MAKEFILE= 1 }
    vim.g.nvim_tree_show_icons = { git= 1, folders= 1, files= 1, folder_arrows= 1 }
end

local function lihuu_vim_rooter_config()
    vim.g.rooter_patterns={'.git','pom.xml','package.json'}
    vim.g.rooter_silent_chdir=1
    vim.g.rooter_change_directory_for_non_project_files='current'
end

local load_core = function()
    if vim.g.vscode then
        return
    end

    lihuu_statify_config()
    lihuu_nvim_tree_config()
    lihuu_sqlite_config()
    lihuu_vim_rooter_config()
    createdir()
    disable_distribution_plugins()
    leader_map()

    local pack = require('core.pack')
    pack.ensure_plugins()
    neovim_qt_config()
    require('core.options')
    require('core.mapping')
    require('keymap')
    require('command'):init()
    require('core.event')
    pack.load_compile()
    vim.cmd [[colorscheme molokai]]
    --lihuu_qf_config()
end

load_core()
