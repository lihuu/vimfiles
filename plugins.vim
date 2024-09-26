let s:isMac = has('mac')||has('macunix')
let s:isLinux = has('linux')
let s:isWindows = has('win32')||has('win64')


call plug#begin()
"nerdtree 这个插件相关的插件
Plug 'preservim/nerdtree',{'on':'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mileszs/ack.vim',{'on':'Ack'}
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'othree/html5.vim', {'for':['html']}
Plug 'mattn/emmet-vim', {'for':['html','javascript','typescript','typescriptreact','javascriptreact'],'on':'EmmetInstall'}
Plug 'elzr/vim-json',{'for':'json'}
Plug 'turbio/bracey.vim', {'for':'html','on':'Bracey','do':'cd server & npm install'}
Plug 'isruslan/vim-es6', {'for':['javascript','typescript','typescriptreact','javascriptreact']}
Plug 'yuezk/vim-js', {'for':['javascript','typescript','typescriptreact','javascriptreact']}
Plug 'leafgarland/typescript-vim', {'for':['typescript','typescriptreact']}
Plug 'peitalin/vim-jsx-typescript',{'for':'typescriptreact'}

"语法检查
Plug 'scrooloose/syntastic'

"language syntax 
Plug 'sheerun/vim-polyglot'
Plug 'othree/xml.vim', {'for':'xml'}
Plug 'sukima/xmledit', {'for':'xml'}
Plug 'chr4/nginx.vim', {'for':'nginx'}
Plug 'calleerlandsson/pick.vim'
Plug 'hail2u/vim-css3-syntax', {'for':'css'}
Plug 'groenewege/vim-less', {'for':'less'}
Plug 'Raimondi/delimitMate'
Plug 'cespare/vim-toml', {'for':'toml'}
Plug 'toml-lang/toml', {'for':'toml'}
"
"彩虹括号
Plug 'luochen1990/rainbow'
Plug 'plasticboy/vim-markdown', {'for':'markdown'}
Plug 'tyru/open-browser.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' ,'for':'markdown' }
Plug 'vimwiki/vimwiki',{'for':'vimwiki','on':['VimwikiIndex']}

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

"colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'phanviet/vim-monokai-pro'

Plug 'andreshazard/vim-freemarker'
"Plug 'lihuu/vim-startify'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/DrawIt'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/c.vim',{'for':'c'}
Plug 'davidhalter/jedi-vim',{'for':'python'}
Plug 'machakann/vim-highlightedyank'
Plug 'vim-scripts/groovy.vim',{'for':'groovy'}
Plug 'pprovost/vim-ps1',{'for':'ps1'}

"使用ctrl+t在新的标签中打开，ctrl+v或者ctrl+x
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim',{'on':['Files','Buffers']}
Plug 'lihuu/fzf.vim',{'on':['Files','Buffers','Rg','History']}

Plug 'preservim/nerdcommenter'
Plug 'machakann/vim-highlightedyank'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'gregsexton/matchtag',{'for':'html'}
Plug 'fatih/vim-go',{'for':'go','do': ':GoUpdateBinaries'}
Plug 'dhruvasagar/vim-table-mode'
"Plug 'andrejlevkovitch/vim-lua-format',{'for':'lua'}

Plug 'ryanoasis/vim-devicons'

"Gui only plugins
if has('gui_running')
    "File icons plugin
    "需要安装字体 https://github.com/ryanoasis/nerd-fonts.git
    "在MacOs中，如果安装了homebrew
    " brew tap homebrew/cask-fonts
    " brew cask install font-hack-nerd-font
    Plug 'vim-scripts/wimproved.vim'
endif

Plug 'dstein64/vim-startuptime',{'on':['StartupTime']}
Plug 'itchyny/vim-cursorword'
Plug 'lihuu/vim9-dashboard'

if s:isMac||s:isLinux
    Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
endif

if s:isWindows || s:isMac
    Plug 'github/copilot.vim'
endif

call plug#end()


