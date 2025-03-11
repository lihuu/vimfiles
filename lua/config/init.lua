local config = {}

function _G.dump(...)
  local objects = vim.tbl_map(vim.inspect, { ... })
  print(unpack(objects))
end

function config.nvim_tree()
  require("nvim-tree").setup({
    actions = {
      change_dir = { enable = true, global = false },
      open_file = {
        window_picker = {
          enable = true,
          exclude = {
            filetype = { "notify", "packer", "qf" },
            buftype = { "terminal" },
          },
        },
        quit_on_open = true,
        resize_window = true,
      },
    },
    git = { enable = true, ignore = true, timeout = 400 },
    filters = { custom = { ".git", "node_modules", ".cache" }, dotfiles = false },
    open_on_tab = true,
    auto_reload_on_write = true,
    disable_netrw = true,
    hijack_netrw = true,
    update_cwd = true,
    update_focused_file = { enable = true, update_cwd = true, ignore_list = {} },
    diagnostics = {
      enable = true,
      icons = { hint = "", info = "", warning = "", error = "" },
    },
    trash = { cmd = "trash", require_confirm = true },
    renderer = {
      indent_markers = { enable = true },
      highlight_git = true,
      -- none icon name all
      highlight_opened_files = "none",
      add_trailing = true,
      group_empty = true,
      special_files = { README = true, Makefile = true, MAKEFILE = true },
      root_folder_modifier = ":~",
      icons = {
        show = { git = true, folder = true, file = true, folder_arrow = true },
        padding = " ",
        glyphs = {
          default = "",
          symlink = "",
          git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★",
            deleted = "",
            ignored = "◌",
          },
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
        },
      },
    },
    respect_buf_cwd = true,
    create_in_closed_folder = false,
    view = {
      width = 30,
      side = "left",
      -- auto_resize = true,
      -- hide_root_folder = false,
    },
    log = {
      enable = false,
      truncate = false,
      types = { all = false, config = false, git = false },
    },
  })
end

function config.hop()
  -- place this in one of your configuration file(s)
  local hop = require("hop")
  hop.setup({})
  vim.keymap.set("n", "<leader><leader>w", ":HopWord<cr>", { remap = true })
end

function config.nvim_rooter()
  require("nvim-rooter").setup({
    rooter_patterns = { ".git", ".hg", ".svn" },
    trigger_patterns = { "*" },
    manual = false,
    fallback_to_parent = true,
  })
end

function config.move_faster()
  require("accelerated-jk").setup({
    mode = "time_driven",
    enable_deceleration = false,
    acceleration_motions = {},
    acceleration_limit = 150,
    acceleration_table = { 7, 12, 17, 21, 24, 26, 28, 30 },
    -- when 'enable_deceleration = true', 'deceleration_table = { {200, 3}, {300, 7}, {450, 11}, {600, 15}, {750, 21}, {900, 9999} }'
    deceleration_table = { { 150, 9999 } },
  })
end

return config
