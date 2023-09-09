local commands = {}

function Lihuu_live_grep()
  if not packer_plugins['telescope.nvim'].loaded then
    vim.cmd [[packadd telescope.nvim]]
    require("modules.tools.config").telescope()
  end
  require('telescope.builtin').live_grep()
end

function commands:init()
  vim.cmd [[command! Rg lua Lihuu_live_grep()]]
end

return commands

