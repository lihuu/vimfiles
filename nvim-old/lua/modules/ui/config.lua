local global = require('core.global')
local config = {}

function config.edge()
  vim.cmd [[set background=dark]]
  vim.g.edge_style = "aura"
  vim.g.edge_enable_italic = 1
  vim.g.edge_disable_italic_comment = 1
  vim.g.edge_show_eob = 1
  vim.g.edge_better_performance = 1
end
function config.onedark()
  require('onedark').setup({style = 'darker'})
end

function config.lualine()
  local function lsp()
    local icon = [[  LSP: ]]
    local msg = 'No Active LSP'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return icon .. msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return icon .. client.name
      end
    end
    return icon .. msg
  end

  local gps = require("nvim-gps")

  require('lualine').setup({
    options = {icons_enabled = true, theme = 'onedark', disabled_filetypes = {}},

    sections = {
      lualine_a = {'mode', 'tabs'},
      lualine_b = {{'branch'}, {'diff'}},
      lualine_c = {
        {'filename'}, {gps.get_location, condition = gps.is_available}
      },
      lualine_x = {
        {
          'diagnostics',
          sources = {'nvim_diagnostic'},
          color_error = "#BF616A",
          color_warn = "#EBCB8B",
          color_info = "#81A1AC",
          color_hint = "#88C0D0",
          symbols = {error = ' ', warn = ' ', info = ' '}
        }, {lsp}, {'encoding'}, {'fileformat'}
      },
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = {}
  })
end

-- https://github.com/kyazdani42/nvim-tree.lua
function config.nvim_tree()
  local tree_cb = require'nvim-tree.config'.nvim_tree_callback
  require('nvim-tree').setup({
    actions = {
      change_dir = {enable = true, global = false},
      open_file = {
        window_picker = {
          enable = true,
          exclude = {
            filetype = {'notify', 'packer', 'qf'},
            buftype = {'terminal'}
          }
        },
        quit_on_open = true,
        resize_window = true
      }
    },
    git = {enable = true, ignore = true, timeout = 400},
    filters = {custom = {'.git', 'node_modules', '.cache'}, dotfiles = true},
    open_on_tab = false,
    auto_reload_on_write = true,
    disable_netrw = true,
    hijack_netrw = true,
    update_cwd = false,
    update_focused_file = {enable = true, update_cwd = false, ignore_list = {}},
    diagnostics = {
      enable = true,
      icons = {hint = "", info = "", warning = "", error = ""}
    },
    trash = {cmd = "trash", require_confirm = true},
    renderer = {
      indent_markers = {enable = true},
      highlight_git = true,
      -- none icon name all
      highlight_opened_files = "none",
      add_trailing = true,
      group_empty = true,
      special_files = {README = true, Makefile = true, MAKEFILE = true},
      root_folder_modifier = ":~",
      icons = {
        show = {git = true, folder = true, file = true, folder_arrow = true},
        padding = ' ',
        glyphs = {
          default = '',
          symlink = '',
          git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★",
            deleted = "",
            ignored = "◌"
          },
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = ""
          }
        }
      }
    },
    respect_buf_cwd = true,
    create_in_closed_folder = false,
    view = {
      width = 30,
      side = 'left',
      -- auto_resize = true,
      hide_root_folder = false,
      mappings = {
        custom_only = true,
        -- list of mappings to set on the tree manually
        list = {
          {key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("tabnew")},
          {key = {"<2-RightMouse>", "<C-]>"}, cb = tree_cb("cd")},
          {key = "<C-v>", cb = tree_cb("vsplit")},
          {key = "<C-x>", cb = tree_cb("split")},
          {key = "<C-t>", cb = tree_cb("tabnew")},
          {key = "<", cb = tree_cb("prev_sibling")},
          {key = ">", cb = tree_cb("next_sibling")},
          {key = "P", cb = tree_cb("parent_node")},
          {key = "<BS>", cb = tree_cb("close_node")},
          {key = "<S-CR>", cb = tree_cb("close_node")},
          {key = "<Tab>", cb = tree_cb("preview")},
          {key = "K", cb = tree_cb("first_sibling")},
          {key = "J", cb = tree_cb("last_sibling")},
          {key = "I", cb = tree_cb("toggle_ignored")},
          {key = "H", cb = tree_cb("toggle_dotfiles")},
          {key = "R", cb = tree_cb("refresh")},
          {key = "a", cb = tree_cb("create")},
          {key = "d", cb = tree_cb("remove")},
          {key = "r", cb = tree_cb("rename")},
          {key = "<C-r>", cb = tree_cb("full_rename")},
          {key = "x", cb = tree_cb("cut")}, {key = "c", cb = tree_cb("copy")},
          {key = "p", cb = tree_cb("paste")},
          {key = "y", cb = tree_cb("copy_name")},
          {key = "Y", cb = tree_cb("copy_path")},
          {key = "gy", cb = tree_cb("copy_absolute_path")},
          {key = "[c", cb = tree_cb("prev_git_item")},
          {key = "]c", cb = tree_cb("next_git_item")},
          {key = "-", cb = tree_cb("dir_up")},
          {key = "s", cb = tree_cb("system_open")},
          {key = "q", cb = tree_cb("close")},
          {key = "g?", cb = tree_cb("toggle_help")}
        }
      }
    },
    log = {
      enable = false,
      truncate = false,
      types = {all = false, config = false, git = false}
    }

  })
end

function config.nvim_bufferline()
  require('bufferline').setup {
    options = {
      mode = "tabs",
      -- mode = "buffers",
      number = "both",
      numbers = function(opts)

        return string.format('%s·%s', opts.raise(opts.ordinal),
                             opts.lower(opts.id))
      end,
      modified_icon = '✥',
      buffer_close_icon = '',
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 20,
      show_buffer_close_icons = true,
      show_buffer_icons = true,
      show_tab_indicators = true,
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,
      separator_style = "slant",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          padding = 1
        }
      },
      close_commandf = "bdelete! %d"
      --[[
            custom_filter=function (buf_number)
                if vim.bo[buf_number].filetype ~= "startify" then
                    return true
                end
            end
            --]]
    }
  }
end

function config.gitsigns()
  if not packer_plugins['plenary.nvim'].loaded then
    vim.cmd [[packadd plenary.nvim]]
  end
  require('gitsigns').setup {
    signs = {
      add = {
        hl = 'GitSignsAdd',
        text = '+',
        numhl = 'GitSignsAddNr',
        linehl = 'GitSignsAddLn'
      },
      change = {
        hl = 'GitSignsChange',
        text = '|',
        numhl = 'GitSignsChangeNr',
        linehl = 'GitSignsChangeLn'
      },
      delete = {
        hl = 'GitSignsDelete',
        text = '_',
        numhl = 'GitSignsDeleteNr',
        linehl = 'GitSignsDeleteLn'
      },
      topdelete = {
        hl = 'GitSignsDelete',
        text = '=',
        numhl = 'GitSignsDeleteNr',
        linehl = 'GitSignsDeleteLn'
      },
      changedelete = {
        hl = 'GitSignsChange',
        text = '~',
        numhl = 'GitSignsChangeNr',
        linehl = 'GitSignsChangeLn'
      }
    },
    watch_gitdir = {interval = 1000, follow_files = true},
    current_line_blame = true,
    current_line_blame_opts = {delay = 1000, virtual_text_pos = 'eol'},
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,
    diff_opts = {internal = false},
    attach_to_untracked = true
  }

end

function config.indent_blankline()
  require("indent_blankline").setup({
    char = "│",
    show_first_indent_level = true,
    filetype_exclude = {
      "startify", "dashboard", "dotooagenda", "log", "fugitive", "gitcommit",
      "packer", "vimwiki", "markdown", "json", "txt", "vista", "help",
      "todoist", "NvimTree", "peekaboo", "git", "TelescopePrompt", "undotree",
      "flutterToolsOutline", "" -- for all buffers without a file type
    },
    buftype_exclude = {"terminal", "nofile"},
    show_trailing_blankline_indent = false,
    show_current_context = true,
    context_patterns = {
      "class", "function", "method", "block", "list_literal", "selector", "^if",
      "^table", "if_statement", "while", "for", "type", "var", "import"
    }
  })
  vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')
end

function config.zen_mode()
  require('zen-mode').setup({})
end

function config.twilight()
  require('twilight').setup({})
end

function config.bqf()
  require('bqf').setup({
    auto_enable = true,
    preview = {
      win_height = 12,
      win_vheight = 12,
      delay_syntax = 80,
      border_chars = {
        '┃', '┃', '━', '━', '┏', '┓', '┗', '┛', '█'
      },
      should_preview_cb = function(bufnr)
        local ret = true
        local filename = vim.api.nvim_buf_get_name(bufnr)
        local fsize = vim.fn.getfsize(filename)
        -- file size greater than 100k can't be previewed automatically
        if fsize > 100 * 1024 then
          ret = false
        end
        return ret
      end
    },
    func_map = {
      openc = '<CR>',
      open = 'o',
      vsplit = '',
      ptogglemode = 'z,',
      stoggleup = ''
    },
    filter = {
      fzf = {
        action_for = {['ctrl-s'] = 'split'},
        extra_opts = {'--bind', 'ctrl-o:toggle-all', '--prompt', '> '}
      }
    }
  })
end

function config.todo_comments()
  require("todo-comments").setup({
    signs = true, -- show icons in the signs column
    sign_priority = 8, -- sign priority
    -- keywords recognized as todo comments
    keywords = {
      FIX = {
        icon = " ", -- icon used for the sign, and in search results
        color = "error", -- can be a hex color, or a named color (see below)
        alt = {"FIXME", "BUG", "FIXIT", "ISSUE"} -- a set of other keywords that all map to this FIX keywords
        -- signs = false, -- configure signs for some keywords individually
      },
      TODO = {icon = " ", color = "info"},
      HACK = {icon = " ", color = "warning"},
      WARN = {icon = " ", color = "warning", alt = {"WARNING", "XXX"}},
      PERF = {icon = " ", alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
      NOTE = {icon = " ", color = "hint", alt = {"INFO"}}
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
      exclude = {} -- list of file types to exclude highlighting
    },
    -- list of named colors where we try to extract the guifg from the
    -- list of hilight groups or use the hex color if hl not found as a fallback
    colors = {
      error = {"DiagnosticError", "ErrorMsg", "#DC2626"},
      warning = {"DiagnosticWarning", "WarningMsg", "#FBBF24"},
      info = {"DiagnosticInfo", "#2563EB"},
      hint = {"DiagnosticHint", "#10B981"},
      default = {"Identifier", "#7C3AED"}
    },
    search = {
      command = "rg",
      args = {
        "--color=never", "--no-heading", "--with-filename", "--line-number",
        "--column"
      },
      -- regex that will be used to match keywords.
      -- don't replace the (KEYWORDS) placeholder
      pattern = [[\b(KEYWORDS):]] -- ripgrep regex
      -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
    }
  })
end

return config

