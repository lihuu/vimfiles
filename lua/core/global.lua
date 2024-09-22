local global = {
  vim = vim,
}

function global:load_variables()
  local os_name = vim.uv.os_uname().sysname
  self.is_mac = os_name == "Darwin"
  self.is_linux = os_name == "Linux"
  self.is_windows = os_name == "Windows_NT" or os_name == "Windows"
  self.vim_path = vim.fn.stdpath("config")
  local path_sep = self.is_windows and "\\" or "/"
  local home = self.is_windows and os.getenv("USERPROFILE") or os.getenv("HOME")
  self.cache_dir = home .. path_sep .. ".cache" .. path_sep .. "nvim" .. path_sep
  self.modules_dir = self.vim_path .. path_sep .. "lua" .. path_sep .. "modules"
  self.home = home
  self.data_dir = string.format("%s/site/", vim.fn.stdpath("data"))
end

global:load_variables()

return global
