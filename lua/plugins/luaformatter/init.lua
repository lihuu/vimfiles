local vim = vim
vim.notify = require('notify')
local alert = function(message)
  vim.notify(vim.inspect(message))
end

local sub_array = function(source_array, start_index, end_index)
  local resultArray = {}
  for i = start_index, end_index, 1 do
    resultArray[i] = source_array[i]
  end
  return resultArray
end

local _M = {}

function _M.LuaFormat()
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  -- local config_file = vim.fn.findfile('.lua-format','.;')
  -- local options
  -- if config_file == '' then
  -- options = ""
  -- else
  -- options = " -c " .. config_file
  -- end
  local outout_str = vim.fn.system('lua-format -i', lines)

  if #outout_str > 0 then
    local output = vim.split(outout_str, "\n")
    local min_line = math.min(#lines, #output)
    -- alert(min_line)
    for i = 1, min_line, 1 do
      local output_line = output[i]
      local input_line = lines[i]
      if not (output_line == input_line) then
        vim.fn.setline(i, output_line)
      end
    end

    if not (#output == #lines) then
      if min_line == #output then
        vim.fn.deletebufline(vim.fn.bufname('%'), min_line + 1, "$")
      else
        local left_line = sub_array(output, min_line + 1, #output)
        vim.fn.append("$", left_line)
      end
    end
    vim.cmd("redraw!")
    vim.cmd('lexpr ""')
    vim.cmd('lwin')
  end
end

return _M
