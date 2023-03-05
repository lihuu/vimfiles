#!/bin/bash
echo "local commits={"
cd ~/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "DAPInstall = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/LuaSnip 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "LuaSnip = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/accelerated-jk 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "accelerated_jk = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/auto-session 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "auto_session = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/better-escape.vim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "better_escape = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-buffer 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "cmp_buffer = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "cmp_nvim_lsp = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "cmp_nvim_lua = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-path 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "cmp_path = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-spell 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "cmp_spell = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-tmux 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "cmp_tmux = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp_luasnip 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "cmp_luasnip = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/fzf 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "fzf = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/fzf.vim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "fzf_vim = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/fzy-lua-native 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "fzy_lua_native = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "gitsigns = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "indent_blankline = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "lsp_signature = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "lspsaga = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/lualine.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "lualine = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "markdown_preview = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/neoformat 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "neoformat = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/neogit 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "neogit = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "neoscroll = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-autopairs 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_autopairs = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-bqf 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_bqf = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_bufferline = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-cmp 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_cmp = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-gps 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_gps = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_lsp_installer = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_lspconfig = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_tree = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_treesitter = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
#cd ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context 
#echo "--`git remote -v|awk '{print $2}'|head -1`"
#echo "nvim_treesitter_context = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_treesitter_textobjects = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_ts_autotag = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_ts_context_commentstring = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_ts_rainbow = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/one-small-step-for-vimkind 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "one_small_step_for_vimkind = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/packer.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "packer = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/plenary.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "plenary= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/popup.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "popup = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/sniprun 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "sniprun = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/split-term.vim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "split_term= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/sqlite.lua 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "sqlite= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "symbols_outline= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-file-browser.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "telescope_file_browser = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "telescope_frecency = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-fzy-native.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "telescope_fzy_native = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "telescope_project = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "telescope = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "todo_comments = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "toggleterm = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/trouble.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "trouble = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/twilight.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "twilight = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-cool 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_cool = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-cursorword 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_cursorword = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-easy-align 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_easy_align = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-easymotion 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_easymotion = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-eft 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_eft = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-fugitive 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_fugitive = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-go 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_go = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-matchup 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_matchup = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-prettier 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_prettier = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-quickrun 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_quickrun = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-startify 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_startify = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-startuptime 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_startuptime = '`git log -n 1|grep "commit"|awk '{print $2}'|head -1`',"
cd ~/.local/share/nvim/site/pack/packer/opt/which-key.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "which_key = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/wilder.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "wilder = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim 
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "zen_mode = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/edge
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "edge = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/filetype.nvim
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "filetype= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/friendly-snippets
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "friendly_snippets = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/nvim-comment
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_comment = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/nvim-dap
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_dap = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/nvim-dap-ui
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_dap_ui = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/nvim-notify
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_notify = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/nvim-web-devicons
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "nvim_web_devicons = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/onedark.nvim
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "onedark = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/vim-rooter
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_rooter = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/start/vim-surround
echo "--`git remote -v|awk '{print $2}'|head -1`"
echo "vim_surround = '`git log -n 1|grep "commit"|awk '{print $2}'`'"
echo "}"
echo "return commits"
