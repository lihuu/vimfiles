local commands = {}

function Lihuu_live_grep()
  if not packer_plugins['telescope.nvim'].loaded then
    vim.cmd [[packadd telescope.nvim]]
    require("modules.tools.config").telescope()
  end
  require('telescope.builtin').live_grep()
end

function Lihuu_open_debug()
  if not packer_plugins['nvim-dap-ui'].loaded then
    vim.cmd [[packadd nvim-dap-ui]]
    require("modules.editor.config").dapui()
  end
  require("dapui").open()
end

function Lihuu_close_debug()
  if not packer_plugins['nvim-dap-ui'].loaded then
    vim.cmd [[packadd nvim-dap-ui]]
    require("modules.editor.config").dapui()
  end
  require("dapui").close()
end

function Lihuu_toggle_debug()
  if not packer_plugins['nvim-dap-ui'].loaded then
    vim.cmd [[packadd nvim-dap-ui]]
    require("modules.editor.config").dapui()
  end
  require("dapui").toggle()
end

function commands:init()
  vim.cmd [[command! Rg lua Lihuu_live_grep()]]
  vim.cmd [[command! StartDebug lua Lihuu_open_debug()]]
  vim.cmd [[command! StopDebug lua Lihuu_close_debug()]]
  vim.cmd [[command! ToggleDebug lua Lihuu_toggle_debug()]]
end

return commands
