local commits = {
  -- https://github.com/Pocco81/DAPInstall.nvim
  DAPInstall = 'bbda2b062e5519cde4e10b6e4240d3dd1f867b20',
  -- https://github.com/L3MON4D3/LuaSnip
  LuaSnip = 'd8cacf83a214b7dd80986a8a24e4adf3fdd4f069',
  -- https://github.com/rhysd/accelerated-jk
  accelerated_jk = '156c5158b72059404f6b8aaf15b59f87dd0aaa88',
  -- https://github.com/rmagatti/auto-session
  auto_session = 'da03666a61af32eb0f57b37f18c020a3a33a44d4',
  -- https://github.com/jdhao/better-escape.vim
  better_escape = '6b16a45a839727977277f6ab11bded63e9ed86bb',
  -- https://github.com/hrsh7th/cmp-buffer
  cmp_buffer = '3022dbc9166796b644a841a02de8dd1cc1d311fa',
  -- https://github.com/hrsh7th/cmp-nvim-lsp
  cmp_nvim_lsp = '59224771f91b86d1de12570b4070fe4ad7cd1eeb',
  -- https://github.com/hrsh7th/cmp-nvim-lua
  cmp_nvim_lua = 'd276254e7198ab7d00f117e88e223b4bd8c02d21',
  -- https://github.com/hrsh7th/cmp-path
  cmp_path = '91ff86cd9c29299a64f968ebb45846c485725f23',
  -- https://github.com/f3fora/cmp-spell
  cmp_spell = '60584cb75e5e8bba5a0c9e4c3ab0791e0698bffa',
  -- https://github.com/andersevenrud/cmp-tmux
  cmp_tmux = 'ef944c96b37be11f7d67733cde2035310f721f42',
  -- https://github.com/saadparwaiz1/cmp_luasnip
  cmp_luasnip = '18095520391186d634a0045dacaa346291096566',
  -- https://github.com/junegunn/fzf
  fzf = '46877e0a92d5e18bfc143ac98bb55b22eaef81ac',
  -- https://github.com/junegunn/fzf.vim
  fzf_vim = 'd6aa21476b2854694e6aa7b0941b8992a906c5ec',
  -- https://github.com/romgrk/fzy-lua-native
  fzy_lua_native = '085c7d262aa35cc55a8523e8c1618d398bf717a7',
  -- https://github.com/lewis6991/gitsigns.nvim
  gitsigns = 'facca89a95aa5e492505270a60a30825be576d14',
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  indent_blankline = '0f8df7e43f0cae4c44e0e8383436ad602f333419',
  -- https://github.com/ray-x/lsp_signature.nvim
  lsp_signature = 'e65a63858771db3f086c8d904ff5f80705fd962b',
  -- https://github.com/glepnir/lspsaga.nvim
  lspsaga = '587c37d763b88faafe42c2ba114073106b38e4e2',
  -- https://github.com/hoob3rt/lualine.nvim
  lualine = '788805771c1ca7fe2c6652c38523cf208908934c',
  -- https://github.com/iamcco/markdown-preview.nvim
  markdown_preview = '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96',
  -- https://github.com/sbdchd/neoformat
  neoformat = '1f79f6e6b2a1e2b3ace87d4760769feb4146ff35',
  -- https://github.com/TimUntersberger/neogit
  neogit = '74c9e29b61780345d3ad9d7a4a4437607caead4a',
  -- https://github.com/karb94/neoscroll.nvim
  neoscroll = '54c5c419f6ee2b35557b3a6a7d631724234ba97a',
  -- https://github.com/windwp/nvim-autopairs
  nvim_autopairs = '5fe24419e7a7ec536d78d60be1515b018ab41b15',
  -- https://github.com/kevinhwang91/nvim-bqf
  nvim_bqf = '8b62211ad7529c314e80b22968eef6ba275c781c',
  -- https://github.com/akinsho/nvim-bufferline.lua
  nvim_bufferline = '83bf4dc7bff642e145c8b4547aa596803a8b4dc4',
  -- https://github.com/hrsh7th/nvim-cmp
  nvim_cmp = '31a145c86642575cef6e6d78184da66ca57e2767',
  -- https://github.com/SmiteshP/nvim-gps
  nvim_gps = 'f4734dff6fc2f33b5fd13412e56c4fce06650a74',
  -- https://github.com/williamboman/nvim-lsp-installer
  nvim_lsp_installer = '9894db12783fdd02be909cdd60e6d0fc20b9e46e',
  -- https://github.com/neovim/nvim-lspconfig
  nvim_lspconfig = 'ea5744f9243ec25a178a0bc403a4c8203ecc4f23',
  -- https://github.com/kyazdani42/nvim-tree.lua
  nvim_tree = '9914780cbabdffe3cd030867f0bc34c6e51bcb95',
  -- https://github.com/nvim-treesitter/nvim-treesitter
  nvim_treesitter = '37398c7d68826c8d6ae3f85cc52d83fd3dee4f84',
  -- https://github.com/romgrk/nvim-treesitter-context
  nvim_treesitter_context = '5fda0b9a2a9049ecc9900e2d86d9ddebab95b0c5',
  -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  nvim_treesitter_textobjects = 'f27f22053d210191e0a267ca15ec80a10a226a97',
  -- https://github.com/windwp/nvim-ts-autotag
  nvim_ts_autotag = 'fdefe46c6807441460f11f11a167a2baf8e4534b',
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
  nvim_ts_context_commentstring = '32d9627123321db65a4f158b72b757bcaef1a3f4',
  -- https://github.com/p00f/nvim-ts-rainbow
  nvim_ts_rainbow = '064fd6c0a15fae7f876c2c6dd4524ca3fad96750',
  -- https://github.com/jbyuki/one-small-step-for-vimkind
  one_small_step_for_vimkind = '4ca4df5533da67e136fce4a906e33634889d6d76',
  -- https://github.com/wbthomason/packer.nvim
  packer = '6afb67460283f0e990d35d229fd38fdc04063e0a',
  -- https://github.com/nvim-lua/plenary.nvim
  plenary = '4b7e52044bbb84242158d977a50c4cbcd85070c7',
  -- https://github.com/nvim-lua/popup.nvim
  popup = 'b7404d35d5d3548a82149238289fa71f7f6de4ac',
  -- https://github.com/michaelb/sniprun
  sniprun = 'c37086a0d12b2053bf147c2f4643c0c92318c0c2',
  -- https://github.com/vimlab/split-term.vim
  split_term = 'a4e28cab77ad07fc8a0ebb62a982768c02eb287c',
  -- https://github.com/tami5/sqlite.lua
  sqlite = '53cac3fdb5f5e4e63e243232b6eccf3c764ae18a',
  -- https://github.com/simrat39/symbols-outline.nvim
  symbols_outline = '6a3ed24c5631da7a5d418bced57c16b32af7747c',
  -- https://github.com/nvim-telescope/telescope-file-browser.nvim
  telescope_file_browser = '84efd93ec772696c1cce2aada4d39f2756953964',
  -- https://github.com/nvim-telescope/telescope-frecency.nvim
  telescope_frecency = '979a6f3d882b7b5352cc6a751faa9c9427d40e74',
  -- https://github.com/nvim-telescope/telescope-fzy-native.nvim
  telescope_fzy_native = '7b3d2528102f858036627a68821ccf5fc1d78ce4',
  -- https://github.com/nvim-telescope/telescope-project.nvim
  telescope_project = 'ad33c9eb67de635ded67069af7552d5162497b1e',
  -- https://github.com/nvim-telescope/telescope.nvim
  telescope = 'b5833a682c511885887373aad76272ad70f7b3c2',
  -- https://github.com/folke/todo-comments.nvim
  todo_comments = '672cd22bd15928434374ac52d0cf38dd250231df',
  -- https://github.com/akinsho/toggleterm.nvim
  toggleterm = '3ba683827c623affb4d9aa518e97b34db2623093',
  -- https://github.com/folke/trouble.nvim
  trouble = '897542f90050c3230856bc6e45de58b94c700bbf',
  -- https://github.com/folke/twilight.nvim
  twilight = '8ab43c0fdc246fdd82382d7ef4ec383f8f755ef9',
  -- https://github.com/romainl/vim-cool
  vim_cool = 'e797f80545073f9e5b0689b91633feda7bb17cc2',
  -- https://github.com/itchyny/vim-cursorword
  vim_cursorword = '371fdd7fa8817c28aa09d181cfcfa3c7ca29bf56',
  -- https://github.com/junegunn/vim-easy-align
  vim_easy_align = '12dd6316974f71ce333e360c0260b4e1f81169c3',
  -- https://github.com/easymotion/vim-easymotion
  vim_easymotion = 'b3cfab2a6302b3b39f53d9fd2cd997e1127d7878',
  -- https://github.com/hrsh7th/vim-eft
  vim_eft = '419deb0c45141c11cfd2648b8523f520f8413ec2',
  -- https://github.com/tpope/vim-fugitive
  vim_fugitive = 'a93ceff61f070a095c3c712c389247a80897e3b0',
  -- https://github.com/fatih/vim-go
  vim_go = '0550762a69a2ef13d9f723c9478155dbc6ad7ddb',
  -- https://github.com/andymass/vim-matchup
  vim_matchup = '80ad7817e58755a602f993163f61f3500978ebe5',
  -- https://github.com/prettier/vim-prettier
  vim_prettier = '5e6cca21e12587c02e32a06bf423519eb1e9f1b2',
  -- https://github.com/thinca/vim-quickrun
  vim_quickrun = '50f9ced186cf2651f4356aa3548c2306e181ec3b',
  -- https://github.com/mhinz/vim-startify
  vim_startify = '81e36c352a8deea54df5ec1e2f4348685569bed2',
  -- https://github.com/dstein64/vim-startuptime
  vim_startuptime = '1acb5fa4aa29a24c36d559474b672cda9b9a9b6d',
  -- https://github.com/folke/which-key.nvim
  which_key = '312c386ee0eafc925c27869d2be9c11ebdb807eb',
  -- https://github.com/gelguy/wilder.nvim
  wilder = '679f348dc90d80ff9ba0e7c470c40a4d038dcecf',
  -- https://github.com/folke/zen-mode.nvim
  zen_mode = 'f1cc53d32b49cf962fb89a2eb0a31b85bb270f7c',
  -- https://github.com/sainnhe/edge
  edge = '33dbe6b7ac23f8666d36ad27db7f82ff58cb2408',
  -- https://github.com/nathom/filetype.nvim
  filetype = 'b522628a45a17d58fc0073ffd64f9dc9530a8027',
  -- https://github.com/rafamadriz/friendly-snippets
  friendly_snippets = 'ef8caa5002e53977779ce8ab18a9c393ed624386',
  -- https://github.com/terrortylor/nvim-comment
  nvim_comment = 'e9ac16ab056695cad6461173693069ec070d2b23',
  -- https://github.com/mfussenegger/nvim-dap
  nvim_dap = '61643680dcb771a29073cd432894e2f81a7c2ae3',
  -- https://github.com/rcarriga/nvim-dap-ui
  nvim_dap_ui = 'f7fc98ead677ffed72d4eec331eb439a7bad3bbf',
  -- https://github.com/rcarriga/nvim-notify
  nvim_notify = '43c54aec682854b39a7e0e89b4c3ba00426d74a8',
  -- https://github.com/kyazdani42/nvim-web-devicons
  nvim_web_devicons = '969728506c0175644a1d448f55e311ccdada7eaf',
  -- https://github.com/navarasu/onedark.nvim
  onedark = 'df090f9d72d43aa51dec5760c44da288b58a79b6',
  -- https://github.com/airblade/vim-rooter
  vim_rooter = '0415be8b5989e56f6c9e382a04906b7f719cfb38',
  -- https://github.com/tpope/vim-surround
  vim_surround = 'aeb933272e72617f7c4d35e1f003be16836b948d'
}
return commits
