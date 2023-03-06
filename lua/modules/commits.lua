local commits = {
  -- https://github.com/Pocco81/DAPInstall.nvim
  DAPInstall = 'bbda2b062e5519cde4e10b6e4240d3dd1f867b20',
  -- https://github.com/L3MON4D3/LuaSnip
  LuaSnip = '9b5be5e9b460fad7134991d3fd0434466959db08',
  -- https://github.com/rhysd/accelerated-jk
  accelerated_jk = '156c5158b72059404f6b8aaf15b59f87dd0aaa88',
  -- https://github.com/rmagatti/auto-session
  auto_session = '04ccdac802200ecc363b251cf922b2b022bb515c',
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
  fzf = '3364d4d147ade148d8e5dd67609e46f0ef6c50fc',
  -- https://github.com/junegunn/fzf.vim
  fzf_vim = 'dc71692255b62d1f67dc55c8e51ab1aa467b1d46',
  -- https://github.com/romgrk/fzy-lua-native
  fzy_lua_native = '085c7d262aa35cc55a8523e8c1618d398bf717a7',
  -- https://github.com/lewis6991/gitsigns.nvim
  gitsigns = '3b6c0a6412b31b91eb26bb8f712562cf7bb1d3be',
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  indent_blankline = '018bd04d80c9a73d399c1061fa0c3b14a7614399',
  -- https://github.com/ray-x/lsp_signature.nvim
  lsp_signature = '6f6252f63b0baf0f2224c4caea33819a27f3f550',
  -- https://github.com/glepnir/lspsaga.nvim
  lspsaga = 'c39cafb10867357ef7004c60b914db448977a531',
  -- https://github.com/hoob3rt/lualine.nvim
  lualine = 'e99d733e0213ceb8f548ae6551b04ae32e590c80',
  -- https://github.com/iamcco/markdown-preview.nvim
  markdown_preview = '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96',
  -- https://github.com/sbdchd/neoformat
  neoformat = '891fad5829f91cbc3d0866f7abd028d233b8763e',
  -- https://github.com/TimUntersberger/neogit
  neogit = '85380916cec322b1351785cac4f4e3f24de36b2a',
  -- https://github.com/karb94/neoscroll.nvim
  neoscroll = 'd7601c26c8a183fa8994ed339e70c2d841253e93',
  -- https://github.com/windwp/nvim-autopairs
  nvim_autopairs = 'ab49517cfd1765b3f3de52c1f0fda6190b44e27b',
  -- https://github.com/kevinhwang91/nvim-bqf
  nvim_bqf = 'b71e6bc220ea2ef8f09d5e6b39d52609a965f322',
  -- https://github.com/akinsho/nvim-bufferline.lua
  nvim_bufferline = '3677aceb9a72630b0613e56516c8f7151b86f95c',
  -- https://github.com/hrsh7th/nvim-cmp
  nvim_cmp = 'feed47fd1da7a1bad2c7dca456ea19c8a5a9823a',
  -- https://github.com/SmiteshP/nvim-gps
  nvim_gps = 'f4734dff6fc2f33b5fd13412e56c4fce06650a74',
  -- https://github.com/lihuu/nvim-lsp-installer
  nvim_lsp_installer = 'a5997d4e2982273b609d991bdd8abb968b894475',
  -- https://github.com/neovim/nvim-lspconfig
  nvim_lspconfig = '6a9f922eb6e7412a4e940e20f4d76fd4e0e3feec',
  -- https://github.com/kyazdani42/nvim-tree.lua
  nvim_tree = 'bbb6d4891009de7dab05ad8fc2d39f272d7a751c',
  -- https://github.com/nvim-treesitter/nvim-treesitter
  nvim_treesitter = '5a87bc98dabd0d38152a6fa774005f7ecbd40f1b',
  -- https://github.com/romgrk/nvim-treesitter-context
  nvim_treesitter_context = '895ec44f5c89bc67ba5440aef3d1f2efa3d59a41',
  -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  nvim_treesitter_textobjects = '4b30081d2736e09f90c890a8a7adfe4df36f5b36',
  -- https://github.com/windwp/nvim-ts-autotag
  nvim_ts_autotag = 'fdefe46c6807441460f11f11a167a2baf8e4534b',
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
  sniprun = '6511fd71e751ed80ea374ef096ec5187682241cd',
  -- https://github.com/vimlab/split-term.vim
  split_term = 'a4e28cab77ad07fc8a0ebb62a982768c02eb287c',
  -- https://github.com/tami5/sqlite.lua
  sqlite = '93ff5824682ecc874200e338fd8ca9ccd08508f8',
  -- https://github.com/simrat39/symbols-outline.nvim
  symbols_outline = '512791925d57a61c545bc303356e8a8f7869763c',
  -- https://github.com/nvim-telescope/telescope-file-browser.nvim
  telescope_file_browser = '61b3769065131129716974f7fb63f82ee409bd80',
  -- https://github.com/nvim-telescope/telescope-frecency.nvim
  telescope_frecency = 'e5696afabd8753d772987ea48434d9c0d8b0aa6b',
  -- https://github.com/nvim-telescope/telescope-fzy-native.nvim
  telescope_fzy_native = '282f069504515eec762ab6d6c89903377252bf5b',
  -- https://github.com/nvim-telescope/telescope-project.nvim
  telescope_project = '8e8ee37b7210761502cdf2c3a82b5ba8fb5b2972',
  -- https://github.com/nvim-telescope/telescope.nvim
  telescope = 'a3f17d3baf70df58b9d3544ea30abe52a7a832c2',
  -- https://github.com/folke/todo-comments.nvim
  todo_comments = '74c7d28cb50b0713c881ef69bcb6cdd77d8907d1',
  -- https://github.com/akinsho/toggleterm.nvim
  toggleterm = '31d38d11390bcd35a568fcc65a79b7d6ec89de62',
  -- https://github.com/folke/trouble.nvim
  trouble = '67337644e38144b444d026b0df2dc5fa0038930f',
  -- https://github.com/folke/twilight.nvim
  twilight = '9410252bed96887ca5a86bf16435a3a51a0e6ce5',
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
  vim_fugitive = 'fa33145cc12003005b92d7e536025ed5833b9c4f
commit/rebase',
  -- https://github.com/fatih/vim-go
  vim_go = '23cc4bca2f586c8c2f7d2cb78bbbfec4b7361763',
  -- https://github.com/andymass/vim-matchup
  vim_matchup = '3a48818a8113a502f245c29d894201421727577a',
  -- https://github.com/prettier/vim-prettier
  vim_prettier = '5e6cca21e12587c02e32a06bf423519eb1e9f1b2',
  -- https://github.com/thinca/vim-quickrun
  vim_quickrun = '50f9ced186cf2651f4356aa3548c2306e181ec3b',
  -- https://github.com/mhinz/vim-startify
  vim_startify = '81e36c352a8deea54df5ec1e2f4348685569bed2',
  -- https://github.com/dstein64/vim-startuptime
  vim_startuptime = '6580cf539c33a212f4f5542068a3b4dd2b3ad834',
  -- https://github.com/folke/which-key.nvim
  which_key = 'fb027738340502b556c3f43051f113bcaa7e8e63',
  -- https://github.com/gelguy/wilder.nvim
  wilder = '679f348dc90d80ff9ba0e7c470c40a4d038dcecf',
  -- https://github.com/folke/zen-mode.nvim
  zen_mode = '4f2e70d75b7ece1c2a7c852664db492537078996',
  -- https://github.com/sainnhe/edge
  edge = 'bc581eccc5a5f7f2cebbe48df23080f2178f32bc',
  -- https://github.com/nathom/filetype.nvim
  filetype = 'b522628a45a17d58fc0073ffd64f9dc9530a8027',
  -- https://github.com/rafamadriz/friendly-snippets
  friendly_snippets = '009887b76f15d16f69ae1341f86a7862f61cf2a1',
  -- https://github.com/terrortylor/nvim-comment
  nvim_comment = 'e9ac16ab056695cad6461173693069ec070d2b23',
  -- https://github.com/mfussenegger/nvim-dap
  nvim_dap = 'c1bfcd89ef440a44d02ade7e71befb1e5aa358ca',
  -- https://github.com/rcarriga/nvim-dap-ui
  nvim_dap_ui = 'bdb94e3853d11b5ce98ec182e5a3719d5c0ef6fd',
  -- https://github.com/rcarriga/nvim-notify
  nvim_notify = '281e4d793c550c866bea3fb85d39de1f0188fb50',
  -- https://github.com/kyazdani42/nvim-web-devicons
  nvim_web_devicons = 'c3c1dc4e36969370ff589b7025df8ec2e5c881a2',
  -- https://github.com/navarasu/onedark.nvim
  onedark = '1fe908fb4acdcee26573e9ccde0de94ec77e5e84',
  -- https://github.com/airblade/vim-rooter
  vim_rooter = '4f52ca556a0b9e257bf920658714470ea0320b7a',
  -- https://github.com/tpope/vim-surround
  vim_surround = '3d188ed2113431cf8dac77be61b842acb64433d9'
}
return commits
