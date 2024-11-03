--Generate logo on this website: https://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=NEOVIM
local neovim = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

local lihuvim = [[
██╗     ██╗██╗  ██╗██╗   ██╗██╗   ██╗██╗███╗   ███╗
██║     ██║██║  ██║██║   ██║██║   ██║██║████╗ ████║
██║     ██║███████║██║   ██║██║   ██║██║██╔████╔██║
██║     ██║██╔══██║██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
███████╗██║██║  ██║╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚══════╝╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

local lihuu = [[
██╗     ██╗██╗  ██╗██╗   ██╗██╗   ██╗
██║     ██║██║  ██║██║   ██║██║   ██║
██║     ██║███████║██║   ██║██║   ██║
██║     ██║██╔══██║██║   ██║██║   ██║
███████╗██║██║  ██║╚██████╔╝╚██████╔╝
╚══════╝╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ 
]]

local silentstorm = [[
███████╗██╗██╗     ███████╗███╗   ██╗████████╗███████╗████████╗ ██████╗ ██████╗ ███╗   ███╗
██╔════╝██║██║     ██╔════╝████╗  ██║╚══██╔══╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗████╗ ████║
███████╗██║██║     █████╗  ██╔██╗ ██║   ██║   ███████╗   ██║   ██║   ██║██████╔╝██╔████╔██║
╚════██║██║██║     ██╔══╝  ██║╚██╗██║   ██║   ╚════██║   ██║   ██║   ██║██╔══██╗██║╚██╔╝██║
███████║██║███████╗███████╗██║ ╚████║   ██║   ███████║   ██║   ╚██████╔╝██║  ██║██║ ╚═╝ ██║
╚══════╝╚═╝╚══════╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝
]]

local monday = [[
███╗   ███╗ ██████╗ ███╗   ██╗██████╗  █████╗ ██╗   ██╗
████╗ ████║██╔═══██╗████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝
██╔████╔██║██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝ 
██║╚██╔╝██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝  
██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║   
╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   
]]

local tuesday = [[
████████╗██╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗
╚══██╔══╝██║   ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
   ██║   ██║   ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ 
   ██║   ██║   ██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  
   ██║   ╚██████╔╝███████╗███████║██████╔╝██║  ██║   ██║   
   ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   
]]

local wenesday = [[
██╗    ██╗███████╗███╗   ██╗███████╗███████╗██████╗  █████╗ ██╗   ██╗
██║    ██║██╔════╝████╗  ██║██╔════╝██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
██║ █╗ ██║█████╗  ██╔██╗ ██║█████╗  ███████╗██║  ██║███████║ ╚████╔╝ 
██║███╗██║██╔══╝  ██║╚██╗██║██╔══╝  ╚════██║██║  ██║██╔══██║  ╚██╔╝  
╚███╔███╔╝███████╗██║ ╚████║███████╗███████║██████╔╝██║  ██║   ██║   
 ╚══╝╚══╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   
]]

local thursday = [[
████████╗██╗  ██╗██╗   ██╗██████╗ ███████╗██████╗  █████╗ ██╗   ██╗
╚══██╔══╝██║  ██║██║   ██║██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗ ██╔╝
   ██║   ███████║██║   ██║██████╔╝███████╗██║  ██║███████║ ╚████╔╝ 
   ██║   ██╔══██║██║   ██║██╔══██╗╚════██║██║  ██║██╔══██║  ╚██╔╝  
   ██║   ██║  ██║╚██████╔╝██║  ██║███████║██████╔╝██║  ██║   ██║   
   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   
]]

local friday = [[
███████╗██████╗ ██╗██████╗  █████╗ ██╗   ██╗
██╔════╝██╔══██╗██║██╔══██╗██╔══██╗╚██╗ ██╔╝
█████╗  ██████╔╝██║██║  ██║███████║ ╚████╔╝ 
██╔══╝  ██╔══██╗██║██║  ██║██╔══██║  ╚██╔╝  
██║     ██║  ██║██║██████╔╝██║  ██║   ██║   
╚═╝     ╚═╝  ╚═╝╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   
]]

local saturday = [[
███████╗ █████╗ ████████╗██╗   ██╗██████╗ ██████╗  █████╗ ██╗   ██╗
██╔════╝██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██╔══██╗██╔══██╗╚██╗ ██╔╝
███████╗███████║   ██║   ██║   ██║██████╔╝██║  ██║███████║ ╚████╔╝ 
╚════██║██╔══██║   ██║   ██║   ██║██╔══██╗██║  ██║██╔══██║  ╚██╔╝  
███████║██║  ██║   ██║   ╚██████╔╝██║  ██║██████╔╝██║  ██║   ██║   
╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   
]]

local sunday = [[
███████╗██╗   ██╗███╗   ██╗██████╗  █████╗ ██╗   ██╗
██╔════╝██║   ██║████╗  ██║██╔══██╗██╔══██╗╚██╗ ██╔╝
███████╗██║   ██║██╔██╗ ██║██║  ██║███████║ ╚████╔╝ 
╚════██║██║   ██║██║╚██╗██║██║  ██║██╔══██║  ╚██╔╝  
███████║╚██████╔╝██║ ╚████║██████╔╝██║  ██║   ██║   
╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   
]]

local function process(logo)
  logo = string.rep("\n", 8) .. logo .. "\n\n"
  return vim.split(logo, "\n")
end

local logos = {
  neovim = process(neovim),
  lihuvim = process(lihuvim),
  lihuu = process(lihuu),
  silentstorm = process(silentstorm),
  monday = process(monday),
  tuesday = process(tuesday),
  wenesday = process(wenesday),
  thursday = process(thursday),
  friday = process(friday),
  saturday = process(saturday),
  sunday = process(sunday),
}

return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      opts.config.header = logos.lihuvim
    end,
  },
}