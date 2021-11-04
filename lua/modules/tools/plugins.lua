local tools = {}
local conf = require('modules.tools.config')

--[[ 配置文件说明
use {
  'myusername/example',        -- The plugin location string
  -- The following keys are all optional
  disable = boolean,           -- Mark a plugin as inactive
  as = string,                 -- Specifies an alias under which to install the plugin
  installer = function,        -- Specifies custom installer. See "custom installers" below.
  updater = function,          -- Specifies custom updater. See "custom installers" below.
  after = string or list,      -- Specifies plugins to load before this plugin. See "sequencing" below
  rtp = string,                -- Specifies a subdirectory of the plugin to add to runtimepath.
  opt = boolean,               -- Manually marks a plugin as optional.
  branch = string,             -- Specifies a git branch to use
  tag = string,                -- Specifies a git tag to use
  commit = string,             -- Specifies a git commit to use
  lock = boolean,              -- Skip updating this plugin in updates/syncs. Still cleans.
  run = string, function, or table, -- Post-update/install hook. See "update/install hooks".
  requires = string or list,   -- Specifies plugin dependencies. See "dependencies".
  rocks = string or list,      -- Specifies Luarocks dependencies for the plugin
  config = string or function, -- Specifies code to run after this plugin is loaded.
  -- The setup key implies opt = true
  setup = string or function,  -- Specifies code to run before this plugin is loaded.
  -- The following keys all imply lazy-loading and imply opt = true
  cmd = string or list,        -- Specifies commands which load this plugin. Can be an autocmd pattern.
  ft = string or list,         -- Specifies filetypes which load this plugin.
  keys = string or list,       -- Specifies maps which load this plugin. See "Keybindings".
  event = string or list,      -- Specifies autocommand events which load this plugin.
  fn = string or list          -- Specifies functions which load this plugin.
  cond = string, function, or list of strings/functions,   -- Specifies a conditional test to load this plugin
  module = string or list      -- Specifies Lua module names for require. When requiring a string which starts
                               -- with one of these module names, the plugin will be loaded.
  module_pattern = string/list -- Specifies Lua pattern of Lua module names for require. When
  requiring a string which matches one of these patterns, the plugin will be loaded.
} --]]

tools['nvim-telescope/telescope.nvim'] = {
    opt = true,
    cmd = {'Telescope'},
    config = conf.telescope,
    requires = {
        {'nvim-lua/popup.nvim', opt = true},
        {'nvim-lua/plenary.nvim', opt = true}
    }
}
tools['nvim-telescope/telescope-fzy-native.nvim'] = {
    opt = true,
    after = 'telescope.nvim'
}

tools['nvim-telescope/telescope-project.nvim'] = {
    opt = true,
    after = 'telescope.nvim'
}
--
tools['nvim-telescope/telescope-frecency.nvim'] = {
    opt = true,
    after = 'telescope.nvim',
    requires = {{'tami5/sqlite.lua', opt = true}}
}

tools['thinca/vim-quickrun'] = {opt = true, cmd = {'QuickRun', 'Q'}}
tools['michaelb/sniprun'] = {
    opt = true,
    run = 'bash ./install.sh',
    cmd = {"SnipRun", "'<,'>SnipRun"}
}
tools['folke/which-key.nvim'] = {
    opt = true,
    keys = ",",
    config = function() require("which-key").setup {} end
}
tools['folke/trouble.nvim'] = {
    opt = true,
    cmd = {"Trouble", "TroubleToggle", "TroubleRefresh"},
    config = conf.trouble
}
tools['dstein64/vim-startuptime'] = {opt = true, cmd = "StartupTime"}
tools['gelguy/wilder.nvim'] = {
    event = "CmdlineEnter",
    config = conf.wilder,
    requires = {{'romgrk/fzy-lua-native', after = 'wilder.nvim'}}
}
tools['nathom/filetype.nvim'] = {opt = false}
tools['prettier/vim-prettier'] = {
    opt = true,
    ft= {'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'},
    cmd={"Prettier"},
    run='yarn install',
    config = conf.prettier
}
return tools
