local commits = {
  -- https://github.com/Pocco81/DAPInstall.nvim
  DAPInstall = 'bbda2b062e5519cde4e10b6e4240d3dd1f867b20',
  -- https://github.com/L3MON4D3/LuaSnip
  LuaSnip = '0b4950a237ce441a6a3a947d501622453f6860ea',
  -- https://github.com/rhysd/accelerated-jk
  accelerated_jk = '156c5158b72059404f6b8aaf15b59f87dd0aaa88',
  -- https://github.com/rmagatti/auto-session
  auto_session = '7afbb149f87be279778689596c781882014f7eef',
  -- https://github.com/jdhao/better-escape.vim
  better_escape = '6b16a45a839727977277f6ab11bded63e9ed86bb',
  -- https://github.com/hrsh7th/cmp-buffer
  cmp_buffer = '3022dbc9166796b644a841a02de8dd1cc1d311fa',
  -- https://github.com/hrsh7th/cmp-nvim-lsp
  cmp_nvim_lsp = '44b16d11215dce86f253ce0c30949813c0a90765',
  -- https://github.com/hrsh7th/cmp-nvim-lua
  cmp_nvim_lua = 'f12408bdb54c39c23e67cab726264c10db33ada8',
  -- https://github.com/hrsh7th/cmp-path
  cmp_path = '91ff86cd9c29299a64f968ebb45846c485725f23',
  -- https://github.com/f3fora/cmp-spell
  cmp_spell = '60584cb75e5e8bba5a0c9e4c3ab0791e0698bffa',
  -- https://github.com/andersevenrud/cmp-tmux
  cmp_tmux = 'ef944c96b37be11f7d67733cde2035310f721f42',
  -- https://github.com/saadparwaiz1/cmp_luasnip
  cmp_luasnip = '18095520391186d634a0045dacaa346291096566',
  -- https://github.com/junegunn/fzf
  fzf = '3c09c77269d848f5e7dd8f350a90e8d7ed760845',
  -- https://github.com/junegunn/fzf.vim
  fzf_vim = 'e0d131d95364edf940a70127fcb5748b86e6955e',
  -- https://github.com/romgrk/fzy-lua-native
  fzy_lua_native = '820f745b7c442176bcc243e8f38ef4b985febfaf',
  -- https://github.com/lewis6991/gitsigns.nvim
  gitsigns = 'adcf2c7f2f495f5df148683764bf7cba6a70f34c',
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  indent_blankline = '4541d690816cb99a7fc248f1486aa87f3abce91c',
  -- https://github.com/ray-x/lsp_signature.nvim
  lsp_signature = '17ff7a405fea8376b015b8ea7910d2e59958bf68',
  -- https://github.com/glepnir/lspsaga.nvim
  lspsaga = '20eef6d60780123ac36b3c8b594ca3b2ebf35c9b',
  -- https://github.com/nvim-lualine/lualine.nvim
  lualine = '05d78e9fd0cdfb4545974a5aa14b1be95a86e9c9',
  -- https://github.com/iamcco/markdown-preview.nvim
  markdown_preview = '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96',
  -- https://github.com/sbdchd/neoformat
  neoformat = 'b35ae45f9425c817126be4cc946a950c1cffe6fa',
  -- https://github.com/TimUntersberger/neogit
  neogit = '3d63d76f04dc7102c83a057ded30a93822b59dec',
  -- https://github.com/karb94/neoscroll.nvim
  neoscroll = 'd7601c26c8a183fa8994ed339e70c2d841253e93',
  -- https://github.com/windwp/nvim-autopairs
  nvim_autopairs = 'ae5b41ce880a6d850055e262d6dfebd362bb276e',
  -- https://github.com/kevinhwang91/nvim-bqf
  nvim_bqf = '3460a1ccf4dc92a52ed7fe2012f02a9194cd84d2',
  -- https://github.com/akinsho/nvim-bufferline.lua
  nvim_bufferline = 'd24378edc14a675c820a303b4512af3bbc5761e9',
  -- https://github.com/hrsh7th/nvim-cmp
  nvim_cmp = 'c4e491a87eeacf0408902c32f031d802c7eafce8',
  -- https://github.com/hrsh7th/nvim-cmp
  nvim_gps = 'c4e491a87eeacf0408902c32f031d802c7eafce8',
  -- https://github.com/lihuu/nvim-lsp-installer
  nvim_lsp_installer = 'a5997d4e2982273b609d991bdd8abb968b894475',
  -- https://github.com/neovim/nvim-lspconfig
  nvim_lspconfig = '447443a2404adc323ad2efc7c0a346a904ce694c',
  -- https://github.com/kyazdani42/nvim-tree.lua
  nvim_tree = '3b62c6bf2c3f2973036aed609d02fd0ca9c3af35',
  -- https://github.com/nvim-treesitter/nvim-treesitter
  nvim_treesitter = '9fa6806b88905d52b5ca36094909630919b432cc',
  -- https://github.com/romgrk/nvim-treesitter-context
  nvim_treesitter_context = '6f8f788738b968f24a108ee599c5be0031f94f06',
  -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  nvim_treesitter_textobjects = '52f1f3280d9092bfaee5c45be5962fabee3d9654',
  -- https://github.com/windwp/nvim-ts-autotag
  nvim_ts_autotag = '6be1192965df35f94b8ea6d323354f7dc7a557e4',
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
  nvim_ts_context_commentstring = '7f625207f225eea97ef7a6abe7611e556c396d2f',
  -- https://github.com/jbyuki/one-small-step-for-vimkind
  one_small_step_for_vimkind = '5cacc816153c66a50de92c9cee29077b4a380254',
  -- https://github.com/wbthomason/packer.nvim
  packer = '1d0cf98a561f7fd654c970c49f917d74fafe1530',
  -- https://github.com/nvim-lua/plenary.nvim
  plenary = '267282a9ce242bbb0c5dc31445b6d353bed978bb',
  -- https://github.com/nvim-lua/popup.nvim
  popup = 'b7404d35d5d3548a82149238289fa71f7f6de4ac',
  -- https://github.com/michaelb/sniprun
  sniprun = '28d55eeb6786a7037fd3564ced8296a71f1cece7',
  -- https://github.com/vimlab/split-term.vim
  split_term = 'a4e28cab77ad07fc8a0ebb62a982768c02eb287c',
  -- https://github.com/tami5/sqlite.lua
  sqlite = 'b7e28c8463254c46a8e61c52d27d6a2040492fc3',
  -- https://github.com/simrat39/symbols-outline.nvim
  symbols_outline = '512791925d57a61c545bc303356e8a8f7869763c',
  -- https://github.com/nvim-telescope/telescope-file-browser.nvim
  telescope_file_browser = 'e03ff55962417b69c85ef41424079bb0580546ba',
  -- https://github.com/nvim-telescope/telescope-frecency.nvim
  telescope_frecency = '62d3381a32ae541233b03a129ece0aeced30ad5e',
  -- https://github.com/nvim-telescope/telescope-fzy-native.nvim
  telescope_fzy_native = '282f069504515eec762ab6d6c89903377252bf5b',
  -- https://github.com/nvim-telescope/telescope-project.nvim
  telescope_project = '7c64b181dd4e72deddcf6f319e3bf1e95b2a2f30',
  -- https://github.com/nvim-telescope/telescope.nvim
  telescope = '47c755d737702df7a39b640c8d9c473a728be1df',
  -- https://github.com/folke/todo-comments.nvim
  todo_comments = '09b0b17d824d2d56f02ff15967e8a2499a89c731',
  -- https://github.com/akinsho/toggleterm.nvim
  toggleterm = '00c13dccc78c09fa5da4c5edda990a363e75035e',
  -- https://github.com/folke/trouble.nvim
  trouble = '20d1b30d6925213abece21d35858a16e11d1e9fc',
  -- https://github.com/folke/twilight.nvim
  twilight = 'a4843e6e67092a1e6fa9666f02bf0ab59174c1df',
  -- https://github.com/romainl/vim-cool
  vim_cool = '04bb7f5dade175a81b47abf4e87aeb30b05b33d8',
  -- https://github.com/itchyny/vim-cursorword
  vim_cursorword = '371fdd7fa8817c28aa09d181cfcfa3c7ca29bf56',
  -- https://github.com/junegunn/vim-easy-align
  vim_easy_align = '12dd6316974f71ce333e360c0260b4e1f81169c3',
  -- https://github.com/easymotion/vim-easymotion
  vim_easymotion = 'b3cfab2a6302b3b39f53d9fd2cd997e1127d7878',
  -- https://github.com/hrsh7th/vim-eft
  vim_eft = '419deb0c45141c11cfd2648b8523f520f8413ec2',
  -- https://github.com/tpope/vim-fugitive
  vim_fugitive = 'b3b838d690f315a503ec4af8c634bdff3b200aaf',
  -- https://github.com/fatih/vim-go
  vim_go = '12de6c0bc0efce3cedc5e28d4fe0ecc3a4aaeb77',
  -- https://github.com/andymass/vim-matchup
  vim_matchup = '17cc05867cb3314761e4baa20115a27120f8e82c',
  -- https://github.com/prettier/vim-prettier
  vim_prettier = '5e6cca21e12587c02e32a06bf423519eb1e9f1b2',
  -- https://github.com/thinca/vim-quickrun
  vim_quickrun = '50f9ced186cf2651f4356aa3548c2306e181ec3b',
  -- https://github.com/mhinz/vim-startify
  vim_startify = '81e36c352a8deea54df5ec1e2f4348685569bed2',
  -- https://github.com/dstein64/vim-startuptime
  vim_startuptime = '454b3de856b7bd298700de33d79774ca9b9e3875',
  -- https://github.com/folke/which-key.nvim
  which_key = '38b990f6eabf62014018b4aae70a97d7a6c2eb88',
  -- https://github.com/gelguy/wilder.nvim
  wilder = '679f348dc90d80ff9ba0e7c470c40a4d038dcecf',
  -- https://github.com/folke/zen-mode.nvim
  zen_mode = '68f554702de63f4b7b6b6d4bcb10178f41a0acc7',
  -- https://github.com/sainnhe/edge
  edge = '358cb6688ac577470a4eafcb53bdd63899dfc937',
  -- https://github.com/rafamadriz/friendly-snippets
  friendly_snippets = 'ea84a710262cb2c286d439070bad37d36fd3db25',
  -- https://github.com/terrortylor/nvim-comment
  nvim_comment = 'e9ac16ab056695cad6461173693069ec070d2b23',
  -- https://github.com/mfussenegger/nvim-dap
  nvim_dap = 'd17d1bba23ec72a157bd183c57840c39e323f515',
  -- https://github.com/rcarriga/nvim-dap-ui
  nvim_dap_ui = '85b16ac2309d85c88577cd8ee1733ce52be8227e',
  -- https://github.com/rcarriga/nvim-notify
  nvim_notify = 'ea9c8ce7a37f2238f934e087c255758659948e0f',
  -- https://github.com/kyazdani42/nvim-web-devicons
  nvim_web_devicons = 'efbfed0567ef4bfac3ce630524a0f6c8451c5534',
  -- https://github.com/airblade/vim-rooter
  vim_rooter = '4f52ca556a0b9e257bf920658714470ea0320b7a',
  -- https://github.com/tpope/vim-surround
  vim_surround = '3d188ed2113431cf8dac77be61b842acb64433d9'
}
return commits
