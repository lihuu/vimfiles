local commits = {
  -- https://github.com/Pocco81/DAPInstall.nvim
  DAPInstall = 'bbda2b062e5519cde4e10b6e4240d3dd1f867b20',
  -- https://github.com/L3MON4D3/LuaSnip
  LuaSnip = 'a835e3d680c5940b61780c6af07885db95382478',
  -- https://github.com/rhysd/accelerated-jk
  accelerated_jk = '156c5158b72059404f6b8aaf15b59f87dd0aaa88',
  -- https://github.com/rmagatti/auto-session
  auto_session = '1d3dd70a2d48e0f3441128eb4fb0b437a0bf2cc4',
  -- https://github.com/jdhao/better-escape.vim
  better_escape = '6b16a45a839727977277f6ab11bded63e9ed86bb',
  -- https://github.com/hrsh7th/cmp-buffer
  cmp_buffer = '3022dbc9166796b644a841a02de8dd1cc1d311fa',
  -- https://github.com/hrsh7th/cmp-nvim-lsp
  cmp_nvim_lsp = '0e6b2ed705ddcff9738ec4ea838141654f12eeef',
  -- https://github.com/hrsh7th/cmp-nvim-lua
  cmp_nvim_lua = 'f3491638d123cfd2c8048aefaf66d246ff250ca6',
  -- https://github.com/hrsh7th/cmp-path
  cmp_path = '91ff86cd9c29299a64f968ebb45846c485725f23',
  -- https://github.com/f3fora/cmp-spell
  cmp_spell = '60584cb75e5e8bba5a0c9e4c3ab0791e0698bffa',
  -- https://github.com/andersevenrud/cmp-tmux
  cmp_tmux = 'ef944c96b37be11f7d67733cde2035310f721f42',
  -- https://github.com/saadparwaiz1/cmp_luasnip
  cmp_luasnip = '18095520391186d634a0045dacaa346291096566',
  -- https://github.com/junegunn/fzf
  fzf = 'e5103d94290eb9d65807a9f1ecee673bd9ce7cc2',
  -- https://github.com/junegunn/fzf.vim
  fzf_vim = 'dc71692255b62d1f67dc55c8e51ab1aa467b1d46',
  -- https://github.com/romgrk/fzy-lua-native
  fzy_lua_native = '085c7d262aa35cc55a8523e8c1618d398bf717a7',
  -- https://github.com/lewis6991/gitsigns.nvim
  gitsigns = 'b1f9cf7c5c5639c006c937fc1819e09f358210fc',
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  indent_blankline = '018bd04d80c9a73d399c1061fa0c3b14a7614399',
  -- https://github.com/ray-x/lsp_signature.nvim
  lsp_signature = '6f6252f63b0baf0f2224c4caea33819a27f3f550',
  -- https://github.com/glepnir/lspsaga.nvim
  lspsaga = '44ae62d12b2cd498ed197cde159dfef5b2ea16b0',
  -- https://github.com/hoob3rt/lualine.nvim
  lualine = 'e99d733e0213ceb8f548ae6551b04ae32e590c80',
  -- https://github.com/iamcco/markdown-preview.nvim
  markdown_preview = '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96',
  -- https://github.com/sbdchd/neoformat
  neoformat = 'ae79cb838b8ed106a083370f3eb3da88ce834c69',
  -- https://github.com/TimUntersberger/neogit
  neogit = '039ff3212ec43cc4d3332956dfb54e263c8d5033',
  -- https://github.com/karb94/neoscroll.nvim
  neoscroll = 'd7601c26c8a183fa8994ed339e70c2d841253e93',
  -- https://github.com/windwp/nvim-autopairs
  nvim_autopairs = 'e755f366721bc9e189ddecd39554559045ac0a18',
  -- https://github.com/kevinhwang91/nvim-bqf
  nvim_bqf = '1276701ed0216b94d7919d5c07845dcdf05fbde5',
  -- https://github.com/akinsho/nvim-bufferline.lua
  nvim_bufferline = '3677aceb9a72630b0613e56516c8f7151b86f95c',
  -- https://github.com/hrsh7th/nvim-cmp
  nvim_cmp = '777450fd0ae289463a14481673e26246b5e38bf2',
  -- https://github.com/SmiteshP/nvim-gps
  nvim_gps = 'f4734dff6fc2f33b5fd13412e56c4fce06650a74',
  -- https://github.com/lihuu/nvim-lsp-installer
  nvim_lsp_installer = 'a5997d4e2982273b609d991bdd8abb968b894475',
  -- https://github.com/neovim/nvim-lspconfig
  nvim_lspconfig = '0f94c5fded29c0024254259f3d8a0284bfb507ea',
  -- https://github.com/kyazdani42/nvim-tree.lua
  nvim_tree = 'aa9971768a08caa4f10f94ab84e48d2ceb30b1c0',
  -- https://github.com/nvim-treesitter/nvim-treesitter
  nvim_treesitter = '8ae2c8ff495fdf0f0f07edcd7afe271f15a70562',
  -- https://github.com/romgrk/nvim-treesitter-context
  nvim_treesitter_context = '88d1627285f7477883516ef60521601862dae7a1',
  -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  nvim_treesitter_textobjects = '582cbb5a4cb50f6161cac8cc01f55aeaff6d836a',
  -- https://github.com/windwp/nvim-ts-autotag
  nvim_ts_autotag = '25698e4033cd6cd3745454bfc837dd670eba0480',
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
  nvim_ts_context_commentstring = '729d83ecb990dc2b30272833c213cc6d49ed5214',
  -- https://github.com/lihuu/nvim-ts-rainbow
  nvim_ts_rainbow = 'ef95c15a935f97c65a80e48e12fe72d49aacf9b9',
  -- https://github.com/jbyuki/one-small-step-for-vimkind
  one_small_step_for_vimkind = 'aef1bdbb8347e6daaf33d5109002f3df243ebfe9',
  -- https://github.com/wbthomason/packer.nvim
  packer = '1d0cf98a561f7fd654c970c49f917d74fafe1530',
  -- https://github.com/nvim-lua/plenary.nvim
  plenary = '253d34830709d690f013daf2853a9d21ad7accab',
  -- https://github.com/nvim-lua/popup.nvim
  popup = 'b7404d35d5d3548a82149238289fa71f7f6de4ac',
  -- https://github.com/michaelb/sniprun
  sniprun = '562ccadf7ed93d6223564714cb2b57f1805f3e06',
  -- https://github.com/vimlab/split-term.vim
  split_term = 'a4e28cab77ad07fc8a0ebb62a982768c02eb287c',
  -- https://github.com/tami5/sqlite.lua
  sqlite = '376e4735c48e07dade3e6ff5f09a654a04f5d4ba',
  -- https://github.com/simrat39/symbols-outline.nvim
  symbols_outline = '512791925d57a61c545bc303356e8a8f7869763c',
  -- https://github.com/nvim-telescope/telescope-file-browser.nvim
  telescope_file_browser = 'e5913012c0ce348098dc91b08ef6dc4a81093c91',
  -- https://github.com/nvim-telescope/telescope-frecency.nvim
  telescope_frecency = 'e5696afabd8753d772987ea48434d9c0d8b0aa6b',
  -- https://github.com/nvim-telescope/telescope-fzy-native.nvim
  telescope_fzy_native = '282f069504515eec762ab6d6c89903377252bf5b',
  -- https://github.com/nvim-telescope/telescope-project.nvim
  telescope_project = '8e8ee37b7210761502cdf2c3a82b5ba8fb5b2972',
  -- https://github.com/nvim-telescope/telescope.nvim
  telescope = 'e504cf03c24119ee024c4182bee7ab31276cd684',
  -- https://github.com/folke/todo-comments.nvim
  todo_comments = '14e2cd9a6e5e67483a03660f08471ca9a981c4a5',
  -- https://github.com/akinsho/toggleterm.nvim
  toggleterm = '9a595ba699837c4333c4296634feed320f084df2',
  -- https://github.com/folke/trouble.nvim
  trouble = '7915277a259fdff5d46c6f1d2e100df2ec384d3b',
  -- https://github.com/folke/twilight.nvim
  twilight = '2e13bd1886562b737f38c418ed542677b41ef5cb',
  -- https://github.com/romainl/vim-cool
  vim_cool = '80c19445728d70595c2f72d0436527e28292ebd9',
  -- https://github.com/itchyny/vim-cursorword
  vim_cursorword = '371fdd7fa8817c28aa09d181cfcfa3c7ca29bf56',
  -- https://github.com/junegunn/vim-easy-align
  vim_easy_align = '12dd6316974f71ce333e360c0260b4e1f81169c3',
  -- https://github.com/easymotion/vim-easymotion
  vim_easymotion = 'b3cfab2a6302b3b39f53d9fd2cd997e1127d7878',
  -- https://github.com/hrsh7th/vim-eft
  vim_eft = '419deb0c45141c11cfd2648b8523f520f8413ec2',
  -- https://github.com/tpope/vim-fugitive
  vim_fugitive = '8ad2b96cdfda11070645f71b2d804466b750041d',
  -- https://github.com/fatih/vim-go
  vim_go = '23cc4bca2f586c8c2f7d2cb78bbbfec4b7361763',
  -- https://github.com/andymass/vim-matchup
  vim_matchup = 'f69d1ac5bd3c4e6ad349f64317000cc9a4a895cf',
  -- https://github.com/prettier/vim-prettier
  vim_prettier = '5e6cca21e12587c02e32a06bf423519eb1e9f1b2',
  -- https://github.com/thinca/vim-quickrun
  vim_quickrun = '50f9ced186cf2651f4356aa3548c2306e181ec3b',
  -- https://github.com/mhinz/vim-startify
  vim_startify = '81e36c352a8deea54df5ec1e2f4348685569bed2',
  -- https://github.com/dstein64/vim-startuptime
  vim_startuptime = '6580cf539c33a212f4f5542068a3b4dd2b3ad834',
  -- https://github.com/folke/which-key.nvim
  which_key = '87b1459b3e0be0340da2183fc4ec8a00b2960678',
  -- https://github.com/gelguy/wilder.nvim
  wilder = '679f348dc90d80ff9ba0e7c470c40a4d038dcecf',
  -- https://github.com/folke/zen-mode.nvim
  zen_mode = 'd907e638c879642d226d27469b53db6925f69d4c',
  -- https://github.com/sainnhe/edge
  edge = 'bc581eccc5a5f7f2cebbe48df23080f2178f32bc',
  -- https://github.com/nathom/filetype.nvim
  filetype = 'b522628a45a17d58fc0073ffd64f9dc9530a8027',
  -- https://github.com/rafamadriz/friendly-snippets
  friendly_snippets = '25ddcd96540a2ce41d714bd7fea2e7f75fea8ead',
  -- https://github.com/terrortylor/nvim-comment
  nvim_comment = 'e9ac16ab056695cad6461173693069ec070d2b23',
  -- https://github.com/mfussenegger/nvim-dap
  nvim_dap = '7e81998e31277c7a33b6c34423640900c5c2c776',
  -- https://github.com/rcarriga/nvim-dap-ui
  nvim_dap_ui = 'bdb94e3853d11b5ce98ec182e5a3719d5c0ef6fd',
  -- https://github.com/rcarriga/nvim-notify
  nvim_notify = '02047199e2752223c77c624160f720ca227944a9',
  -- https://github.com/kyazdani42/nvim-web-devicons
  nvim_web_devicons = '95b1e300699be8eb6b5be1758a9d4d69fe93cc7f',
  -- https://github.com/navarasu/onedark.nvim
  onedark = '77b89b13068206f35918d8cf229bf591c4e7dcd7',
  -- https://github.com/airblade/vim-rooter
  vim_rooter = '4f52ca556a0b9e257bf920658714470ea0320b7a',
  -- https://github.com/tpope/vim-surround
  vim_surround = '3d188ed2113431cf8dac77be61b842acb64433d9'
}
return commits
