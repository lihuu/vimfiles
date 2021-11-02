local commands= {}

function commands:init()
    vim.cmd [[command! Rg lua require('telescope.builtin').live_grep()]]
end

return commands
