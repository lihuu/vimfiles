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
Plug 'scrooloose/nerdtree'
"ack命令
Plug 'mileszs/ack.vim'
"Plug 'gtags.vim'
"Plug 'gtk-vim-syntax'
"Plug 'jQuery'
"Plug 'matchit.zip'
"Plug 'xml.vim'
Plug 'tpope/vim-surround'
"Plug 'Lokaltog/vim-powerline'
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
Plug 'othree/xml.vim'
Plug 'sukima/xmledit'
Plug 'chr4/nginx.vim'
Plug 'calleerlandsson/pick.vim'
Plug 'hail2u/vim-css3-syntax' 
Plug 'groenewege/vim-less'
Plug 'Raimondi/delimitMate'
Plug 'cespare/vim-toml'
Plug 'toml-lang/toml'
"
"彩虹括号
Plug 'luochen1990/rainbow'

"Plug Markdown config
Plug 'plasticboy/vim-markdown'
Plug 'tyru/open-browser.vim'
"Plug 'iamcco/markdown-preview.vim'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vimwiki/vimwiki'

"Git config 
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
"Plug 'airblade/vim-rooter'
Plug 'vim-scripts/DrawIt'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'neoclide/coc.nvim',{'branch':'release'}

Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/c.vim'

Plug 'ctrlpvim/ctrlp.vim'


if has('gui_running')
    Plug 'terryma/vim-multiple-cursors'
endif

