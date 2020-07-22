Plug 'easymotion/vim-easymotion'
"Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
"Plug 'FuzzyFinder'
"Plug 'Gundo'
Plug 'elzr/vim-json'
"Plug 'JavaScript-Indent'
"Plug 'L9'
"Plug 'Mark'
"Plug 'PasteBin.vim'
""'Plug 'VisIncr'

"左边的文件树
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
"ack命令
Plug 'mileszs/ack.vim',{'on':'Ack'}
"Plug 'gtags.vim'
"Plug 'gtk-vim-syntax'
"Plug 'jQuery'
"Plug 'matchit.zip'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/html5.vim'

"Javascript 相关的插件
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'isruslan/vim-es6'

"语法检查
Plug 'scrooloose/syntastic'

"emmet
Plug 'mattn/emmet-vim'

"language syntax 
Plug 'othree/xml.vim',{'for':'xml'}
Plug 'sukima/xmledit'
Plug 'chr4/nginx.vim'
Plug 'calleerlandsson/pick.vim'
Plug 'hail2u/vim-css3-syntax' 
Plug 'groenewege/vim-less',{'for':'less'}
Plug 'Raimondi/delimitMate'
Plug 'cespare/vim-toml',{'for':'toml'}
Plug 'toml-lang/toml',{'for':'toml'}
"
"彩虹括号
Plug 'luochen1990/rainbow'
"Plug Markdown config
Plug 'plasticboy/vim-markdown',{'for':'markdown'}
Plug 'tyru/open-browser.vim'
"Plug 'iamcco/markdown-preview.vim'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' ,'for':'markdown' }
Plug 'vimwiki/vimwiki'

"Git config 
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/DrawIt'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/c.vim',{'for':'c'}
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
Plug 'vim-scripts/groovy.vim',{'for':'groovy'}
Plug 'junegunn/fzf.vim',{'on':'Files'}
Plug 'pprovost/vim-ps1'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }


if has('gui_running')
    Plug 'terryma/vim-multiple-cursors'
endif

