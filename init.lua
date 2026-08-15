-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local vim = require("core.global").vim
if vim.g.neovide then
  -- config neovide
  local global = require("core.global")
  vim.g.neovide_opacity = 0.9
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_fullscreen = false
  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_trail_size = 0.3
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  -- railgun torpedo pixiedust sonicboom ripple wireframe
  vim.g.neovide_cursor_vfx_mode = ""
  vim.g.neovide_cursor_vfx_opacity = 200.0
  vim.g.neovide_cursor_vfx_particle_speed = 10.0

  local function set_ime(args)
    if args.event:match("Enter$") then
      vim.g.neovide_input_ime = true
    else
      vim.g.neovide_input_ime = false
    end
  end

  local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

  vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
    group = ime_input,
    pattern = "*",
    callback = set_ime,
  })

  vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
    group = ime_input,
    pattern = "[/\\?]",
    callback = set_ime,
  })

  if global.is_windows then
    vim.opt.guifont = "BlexMono Nerd Font:h14"
  end

  if global.is_mac then
    -- 针对mac系统的neovide的配置
    -- vim.opt.guifont = "JetBrainsMono Nerd Font:h18"
    vim.opt.guifont = "BlexMono Nerd Font:h18"
  end

  -- clipboard: Cmd+C / Cmd+V 直达系统剪贴板
  -- (Neovide 不拦截这些按键, 只转发给 nvim, 需要显式映射)
  vim.g.neovide_input_use_logo = true -- 兼容旧版本 Neovide (默认会吞掉 Cmd 键)

  local function copy_to_system()
    vim.cmd([[normal! "+y]])
  end

  local function paste_from_system()
    vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
  end

  vim.keymap.set("v", "<D-c>", copy_to_system, { silent = true, desc = "Copy to system clipboard" })
  vim.keymap.set(
    { "n", "i", "v", "c", "t" },
    "<D-v>",
    paste_from_system,
    { silent = true, desc = "Paste from system clipboard" }
  )
end
