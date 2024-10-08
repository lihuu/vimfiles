-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- https://www.lazyvim.org/keymaps

local global = require("core.global")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  -- @cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>bn", ":tabnew<cr>", { desc = "New tab" })
map("n", "<leader>l", ":BufferLineCycleNext<cr>", { desc = "Next buffer" })
map("n", "<leader>h", ":BufferLineCyclePrev<cr>", { desc = "Pre buffer" })
map("n", "<leader>bk", ":bdelete<cr>", { desc = "Close buffer" })
map("n", "<leader>gg", ":Neogit<cr>", { desc = "Open neogit" })
map("n", "<c-j>", "5j", { desc = "5 times j" })
map("n", "<c-k>", "5k", { desc = "5 times k" })
map("n", "<c-h>", "5h", { desc = "5 times h" })
map("n", "<c-l>", "5l", { desc = "5 times l" })
map("n", "<leader>fp", ":e $MYVIMRC<cr>", { desc = "open my vim config file" })
map("n", "j", "<Plug>(accelerated_jk_gj)", {})
map("n", "k", "<Plug>(accelerated_jk_gk)", {})
if global.is_windows then
  -- only windows need this
  map("n", "<c-v>", '"+gP', { desc = "paste text in normal mode" })
  map("v", "<c-c>", '"+y', { desc = "copy text" })
end

local function show_scriptnames_in_buffer()
  vim.cmd("new")
  local output = vim.fn.execute("scriptnames")
  vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(output, "\n"))
end

vim.api.nvim_create_user_command("ShowScriptnames", show_scriptnames_in_buffer, {})
