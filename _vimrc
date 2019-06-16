set nocompatible
set laststatus=2
syntax on
set nu
syntax enable
set ts=4
set shiftwidth=4
set expandtab
set background=dark
set cursorline
set termguicolors
"colorscheme torte
colorscheme molokai
"set fdm=indent
"set sourcecode folding
set fdm=marker
"set guifont=Consolas:h14
"set guifont=DejaVu\ Sans\ Mono:h13
set guifont=Fira\ Code:h13:i
let $LANG='en'
set langmenu='en'
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
behave mswin
set fileencodings=utf-8,chinese,latin-1,latin1
set encoding=utf-8
set nobackup
set noundofile


set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

filetype off
"git clone https://github.com/VundleVim/Vundle.vim.git
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin('$VIM/vimfiles/bundle/')
Plugin 'EasyMotion'
Plugin 'FuzzyFinder'
Plugin 'Gundo'
Plugin 'JSON.vim'
Plugin 'JavaScript-Indent'
Plugin 'L9'
Plugin 'Mark'
Plugin 'PasteBin.vim'
Plugin 'VisIncr'
Plugin 'scrooloose/nerdtree'
Plugin 'ack.vim'
Plugin 'gtags.vim'
Plugin 'gtk-vim-syntax'
Plugin 'jQuery'
Plugin 'matchit.zip'
"Plugin 'xml.vim'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'Lokaltog/vim-powerline'


Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'calleerlandsson/pick.vim'
Plugin 'chr4/nginx.vim'
Plugin 'mxw/vim-jsx'
Plugin 'vimwiki/vimwiki'
Plugin 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'
Plugin 'hail2u/vim-css3-syntax' 
"彩虹括号
Plugin 'luochen1990/rainbow'
"Plugin 
Plugin 'plasticboy/vim-markdown'
Plugin 'tyru/open-browser.vim'
Plugin 'iamcco/markdown-preview.vim'
if has('gui_running')
    Plugin 'vim-multiple-cursors'
endif
if v:version < 704
    Plugin 'Pydiction'
    Plugin 'Python-mode-klen'
endif



call vundle#end()
filetype plugin indent on

"vim-script的仓库





"
"+---------------------------------------------------------
"|自定义按键
"|
"+---------------------------------------------------------
"nerdtree 按键映射
noremap <F5> :NERDTreeToggle<cr>
"insert 模式中删除一行
inoremap <c-d> <ESC>ddi
inoremap <c-u>  <ESC>~i

"打开vim配置文件的映射
nnoremap <leader>ev :vsplit $MYVIMRC
"配置文件生效的映射
nnoremap <leader>sv :source $MYVIMRC<cr>



"
"Extral Configuration
let g:jsx_ext_required=0

"wiki configuration
"
let g:vimwiki_list = [{'path': 'D:/OneDrive/mywiki/'}]

let delimitMate_matchpairs="(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"

"vim-markdown configuration
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_toc_autofit = 1

