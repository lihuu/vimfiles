#!/bin/bash
echo "local commits={"
cd ~/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim 
echo "DAPInstall = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/LuaSnip 
echo "LuaSnip = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/accelerated-jk 
echo "accelerated_jk = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/auto-session 
echo "auto_session = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/better-escape.vim 
echo "better_escape = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-buffer 
echo "cmp_buffer = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp 
echo "cmp_nvim_lsp = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua 
echo "cmp_nvim_lua = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-path 
echo "cmp_path = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-spell 
echo "cmp_spell = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp-tmux 
echo "cmp_tmux = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/cmp_luasnip 
echo "cmp_luasnip = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/fzf 
echo "fzf = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/fzf.vim 
echo "fzf_vim = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/fzy-lua-native 
echo "fzy_lua_native = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim 
echo "gitsigns = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim 
echo "indent_blankline = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim 
echo "lsp_signature = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim 
echo "lspsaga = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/lualine.nvim 
echo "lualine = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim 
echo "markdown_preview = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/neoformat 
echo "neoformat = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/neogit 
echo "neogit = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim 
echo "neoscroll = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-autopairs 
echo "nvim_autopairs = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-bqf 
echo "nvim_bqf = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua 
echo "nvim_bufferline = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-cmp 
echo "nvim_cmp = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-gps 
echo "nvim_gps = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer 
echo "nvim_lsp_installer = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig 
echo "nvim_lspconfig = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua 
echo "nvim_tree = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter 
echo "nvim_treesitter = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context 
echo "nvim_treesitter_context = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects 
echo "nvim_treesitter_textobjects = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag 
echo "nvim_ts_autotag = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring 
echo "nvim_ts_context_commentstring = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow 
echo "nvim_ts_rainbow = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/one-small-step-for-vimkind 
echo "one_small_step_for_vimkind = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/packer.nvim 
echo "packer = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/plenary.nvim 
echo "plenary= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/popup.nvim 
echo "popup = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/sniprun 
echo "sniprun = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/split-term.vim 
echo "split_term= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/sqlite.lua 
echo "sqlite= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim 
echo "symbols_outline= '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-file-browser.nvim 
echo "telescope_file_browser = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim 
echo "telescope_frecency = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-fzy-native.nvim 
echo "telescope_fzy_native = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim 
echo "telescope_project = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/telescope.nvim 
echo "telescope = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim 
echo "todo_comments = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim 
echo "toggleterm = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/trouble.nvim 
echo "trouble = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/twilight.nvim 
echo "twilight = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-cool 
echo "vim_cool = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-cursorword 
echo "vim_cursorword = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-easy-align 
echo "vim_easy_align = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-easymotion 
echo "vim_easymotion = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-eft 
echo "vim_eft = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-fugitive 
echo "vim_fugitive = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-go 
echo "vim_go = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-matchup 
echo "vim_matchup = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-prettier 
echo "vim_prettier = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-quickrun 
echo "vim_quickrun = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-startify 
echo "vim_startify = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/vim-startuptime 
echo "vim_startuptime = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/which-key.nvim 
echo "which_key = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/wilder.nvim 
echo "wilder = '`git log -n 1|grep "commit"|awk '{print $2}'`',"
cd ~/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim 
echo "zen_mode = '`git log -n 1|grep "commit"|awk '{print $2}'`'"
echo "}"
echo "return commits"
