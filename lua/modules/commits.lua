local commits = {
  -- https://github.com/Pocco81/DAPInstall.nvim
  DAPInstall = 'bbda2b062e5519cde4e10b6e4240d3dd1f867b20',
  -- https://github.com/L3MON4D3/LuaSnip
  LuaSnip = 'bc8ec05022743d3f08bda7a76c6bb5e9a9024581',
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
  fzf = 'f1a96296525975ea7d4c45aebc4fed5117cecb72',
  -- https://github.com/junegunn/fzf.vim
  fzf_vim = 'dc71692255b62d1f67dc55c8e51ab1aa467b1d46',
  -- https://github.com/romgrk/fzy-lua-native
  fzy_lua_native = '45148b3f70d244e8b8b5db60df447a2b7ac2de9d',
  -- https://github.com/lewis6991/gitsigns.nvim
  gitsigns = '372d5cb485f2062ac74abc5b33054abac21d8b58',
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  indent_blankline = '018bd04d80c9a73d399c1061fa0c3b14a7614399',
  -- https://github.com/ray-x/lsp_signature.nvim
  lsp_signature = '775c0cdf5be5adcc08f27c9058edb00b5b517520',
  -- https://github.com/glepnir/lspsaga.nvim
  lspsaga = '44af2ab1fee6bf166a001f7f006284a13737b45e',
  -- https://github.com/hoob3rt/lualine.nvim
  lualine = '84ffb80e452d95e2c46fa29a98ea11a240f7843e',
  -- https://github.com/iamcco/markdown-preview.nvim
  markdown_preview = '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96',
  -- https://github.com/sbdchd/neoformat
  neoformat = 'e18e0cc2641dd78f0cdb0ddd575843045d672dde',
  -- https://github.com/TimUntersberger/neogit
  neogit = '039ff3212ec43cc4d3332956dfb54e263c8d5033',
  -- https://github.com/karb94/neoscroll.nvim
  neoscroll = 'd7601c26c8a183fa8994ed339e70c2d841253e93',
  -- https://github.com/windwp/nvim-autopairs
  nvim_autopairs = '7470af886ffb3df32800e5ef9c072a6cd825770d',
  -- https://github.com/kevinhwang91/nvim-bqf
  nvim_bqf = '1276701ed0216b94d7919d5c07845dcdf05fbde5',
  -- https://github.com/akinsho/nvim-bufferline.lua
  nvim_bufferline = 'ef4fdc5cea3473801dce89b5fdfe633380c80c65',
  -- https://github.com/hrsh7th/nvim-cmp
  nvim_cmp = '777450fd0ae289463a14481673e26246b5e38bf2',
  -- https://github.com/SmiteshP/nvim-gps
  nvim_gps = 'f4734dff6fc2f33b5fd13412e56c4fce06650a74',
  -- https://github.com/lihuu/nvim-lsp-installer
  nvim_lsp_installer = 'a5997d4e2982273b609d991bdd8abb968b894475',
  -- https://github.com/neovim/nvim-lspconfig
  nvim_lspconfig = '27e9e1d2638ffd133b06f314a49ac55825cb1017',
  -- https://github.com/kyazdani42/nvim-tree.lua
  nvim_tree = '086bf310bd19a7103ee7d761eb59f89f3dd23e21',
  -- https://github.com/nvim-treesitter/nvim-treesitter
  nvim_treesitter = 'a57d2a599b57a619f58a5c91c89d9bf12f8977b2',
  -- https://github.com/romgrk/nvim-treesitter-context
  nvim_treesitter_context = '38203f5e6c62617b3c07662dc71ce3047ecd90d3',
  -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  nvim_treesitter_textobjects = 'b55fe6175f0001347a433c9df358c8cbf8a4e90f',
  -- https://github.com/windwp/nvim-ts-autotag
  nvim_ts_autotag = '7a1c677985b8fc4cdfdb87dd55fbc16dadd86bbe',
  -- https://github.com/JoosepAlviste/nvim-ts-context-commentstring
  nvim_ts_context_commentstring = '729d83ecb990dc2b30272833c213cc6d49ed5214',
  -- https://github.com/lihuu/nvim-ts-rainbow
  nvim_ts_rainbow = 'ef95c15a935f97c65a80e48e12fe72d49aacf9b9',
  -- https://github.com/jbyuki/one-small-step-for-vimkind
  one_small_step_for_vimkind = 'a0729e2478759583a49c62966836beec46fc5e1d',
  -- https://github.com/wbthomason/packer.nvim
  packer = '1d0cf98a561f7fd654c970c49f917d74fafe1530',
  -- https://github.com/nvim-lua/plenary.nvim
  plenary = '253d34830709d690f013daf2853a9d21ad7accab',
  -- https://github.com/nvim-lua/popup.nvim
  popup = 'b7404d35d5d3548a82149238289fa71f7f6de4ac',
  -- https://github.com/michaelb/sniprun
  sniprun = '52ecf6ad06304e46722118af2aaea5647b157ab8',
  -- https://github.com/vimlab/split-term.vim
  split_term = 'a4e28cab77ad07fc8a0ebb62a982768c02eb287c',
  -- https://github.com/tami5/sqlite.lua
  sqlite = '376e4735c48e07dade3e6ff5f09a654a04f5d4ba',
  -- https://github.com/simrat39/symbols-outline.nvim
  symbols_outline = '512791925d57a61c545bc303356e8a8f7869763c',
  -- https://github.com/nvim-telescope/telescope-file-browser.nvim
  telescope_file_browser = 'e0fcb12702ad0d2873544a31730f9aaef04fd032',
  -- https://github.com/nvim-telescope/telescope-frecency.nvim
  telescope_frecency = 'e5696afabd8753d772987ea48434d9c0d8b0aa6b',
  -- https://github.com/nvim-telescope/telescope-fzy-native.nvim
  telescope_fzy_native = '282f069504515eec762ab6d6c89903377252bf5b',
  -- https://github.com/nvim-telescope/telescope-project.nvim
  telescope_project = 'fa081e35ba7397e5147a51ece693aa3afda167fc',
  -- https://github.com/nvim-telescope/telescope.nvim
  telescope = '2ea61f1952f0ad10e4fcc282468a06d3e69674c2',
  -- https://github.com/folke/todo-comments.nvim
  todo_comments = '8febc60a76feefd8203077ef78b6a262ea1a41f9',
  -- https://github.com/akinsho/toggleterm.nvim
  toggleterm = 'b86982429325112d2b20c6d0cc7a5c4b182ab705',
  -- https://github.com/folke/trouble.nvim
  trouble = '2ae7237c2917d661f458443c9a88680f8ca2d7b2',
  -- https://github.com/folke/twilight.nvim
  twilight = '2e13bd1886562b737f38c418ed542677b41ef5cb',
  -- https://github.com/romainl/vim-cool
  vim_cool = '80536b9f2e23292708a64f2e7bcf5e596f9faf24',
  -- https://github.com/itchyny/vim-cursorword
  vim_cursorword = '371fdd7fa8817c28aa09d181cfcfa3c7ca29bf56',
  -- https://github.com/junegunn/vim-easy-align
  vim_easy_align = '12dd6316974f71ce333e360c0260b4e1f81169c3',
  -- https://github.com/easymotion/vim-easymotion
  vim_easymotion = 'b3cfab2a6302b3b39f53d9fd2cd997e1127d7878',
  -- https://github.com/hrsh7th/vim-eft
  vim_eft = '419deb0c45141c11cfd2648b8523f520f8413ec2',
  -- https://github.com/tpope/vim-fugitive
  vim_fugitive = 'ef99f1d90cdb33a52931aed5868785b51fb9411d',
  -- https://github.com/fatih/vim-go
  vim_go = 'a494378f6c106a97e39c62b493c14476f9f7de4f',
  -- https://github.com/andymass/vim-matchup
  vim_matchup = '156367e4cbd123bc9a70eeabeaa16f7cf9239e12',
  -- https://github.com/prettier/vim-prettier
  vim_prettier = '5e6cca21e12587c02e32a06bf423519eb1e9f1b2',
  -- https://github.com/thinca/vim-quickrun
  vim_quickrun = '50f9ced186cf2651f4356aa3548c2306e181ec3b',
  -- https://github.com/mhinz/vim-startify
  vim_startify = '81e36c352a8deea54df5ec1e2f4348685569bed2',
  -- https://github.com/dstein64/vim-startuptime
  vim_startuptime = '6580cf539c33a212f4f5542068a3b4dd2b3ad834',
  -- https://github.com/folke/which-key.nvim
  which_key = '4b73390eec680b4c061ea175eb32c0ff3412271d',
  -- https://github.com/gelguy/wilder.nvim
  wilder = '679f348dc90d80ff9ba0e7c470c40a4d038dcecf',
  -- https://github.com/folke/zen-mode.nvim
  zen_mode = 'd907e638c879642d226d27469b53db6925f69d4c',
  -- https://github.com/sainnhe/edge
  edge = 'bdebafb8229403a1e138344802b6817b1cf660e8',
  -- https://github.com/nathom/filetype.nvim
  filetype = 'b522628a45a17d58fc0073ffd64f9dc9530a8027',
  -- https://github.com/rafamadriz/friendly-snippets
  friendly_snippets = '8d91ba2dc2421a54981115f61b914974f938fa77',
  -- https://github.com/terrortylor/nvim-comment
  nvim_comment = 'e9ac16ab056695cad6461173693069ec070d2b23',
  -- https://github.com/mfussenegger/nvim-dap
  nvim_dap = 'debd7c2f80eaf20c5f5df25db8d8c1b9b18f4421',
  -- https://github.com/rcarriga/nvim-dap-ui
  nvim_dap_ui = '286f682f366fbc652b38dff893569374e9433dd3',
  -- https://github.com/rcarriga/nvim-notify
  nvim_notify = '50d037041ada0895aeba4c0215cde6d11b7729c4',
  -- https://github.com/kyazdani42/nvim-web-devicons
  nvim_web_devicons = 'f16ec8f6e5d23e4349501dae46e0a661918e086e',
  -- https://github.com/navarasu/onedark.nvim
  onedark = 'dd640f6cfb0e370cfd3db389f04b172508848bd3',
  -- https://github.com/airblade/vim-rooter
  vim_rooter = '4f52ca556a0b9e257bf920658714470ea0320b7a',
  -- https://github.com/tpope/vim-surround
  vim_surround = '3d188ed2113431cf8dac77be61b842acb64433d9'
}
return commits
