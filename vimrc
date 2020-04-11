let s:isWindows = has('win16') || has('win32') || has('win64')

set nocompatible
set laststatus=2
syntax on
set nu
syntax enable
set ts=4
set shiftwidth=4
set expandtab
"set background=dark
set cursorline
set autoread
"set termguicolors
"colorscheme torte
colorscheme molokai
if ! has('gui_running')
    set t_Co=256
endif
"set fdm=indent
"set sourcecode folding
set fdm=marker
set guifont=Consolas:h14:i
"set guifont=Consolas:h14:i
"set guifont=DejaVu\ Sans\ Mono:h13:i
"set guifont=Fira\ Code:h13:i
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
"set nowritebackup
set noundofile
"set noeb
"set bell-style none
set noerrorbells
set novisualbell
"set vb t_vb=""
"set pythonthreedll=python36.dll
set visualbell t_vb=
if s:isWindows && (has("autocmd") && has("gui"))
    au GUIEnter * set t_vb=
endif


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
if s:isWindows
    set rtp+=$HOME/vimfiles/autoload/plug.vim
    call plug#begin('$HOME/vimfiles/plugged/')
        source $HOME/vimfiles/plugins.vim
    call plug#end()
else
    "set rtp+=~/.vim/autoload/plug.vim
    call plug#begin('~/.vim/plugged')
        source ~/.vim/plugins.vim
    call plug#end()
endif

filetype plugin indent on

"vim-script的仓库

"
"+---------------------------------------------------------
"|自定义按键
"|
"+---------------------------------------------------------
"nerdtree 按键映射
let mapleader="\<space>"


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
let g:vimwiki_list = [{'path': '~/OneDrive/mywiki/'}]

let delimitMate_matchpairs="(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"

"*****************vim-markdown configuration start *********

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_toc_autofit = 1

"*****************vim-markdown configuration end ***********

"****************prettier config start****************

let g:prettier#autoformat = 0                                                                                       
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier
"g:prettier#config#parser = 'babylon'
let g:prettier#config#parser='babylon'
"****************prettier config end*****************

if s:isWindows
    source $HOME/vimfiles/coc-config.vim
    source $HOME/vimfiles/clang.vim
    source $HOME/vimfiles/markdown-preview-config.vim
else
    source ~/.vim/coc-config.vim
    source ~/.vim/clang.vim
    source ~/.vim/markdown-preview-config.vim
endif


noremap <leader>f :NERDTreeToggle<cr>
"switch tab
noremap <leader>h <esc>:tabprevious<cr>
noremap <leader>l <esc>:tabnext<cr>
"sort lines
noremap <leader>s :sort<cr>

"move fastly
noremap <c-j> 5j
noremap <c-k> 5k
noremap <c-h> 5h
noremap <c-l> 5l
"noremap <c-i> 0

"let g:airline_theme='molokai'
let g:airline_theme='luna'

"
"
"Config for emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='i' " value: n i v a
"remap the default <C-Y> leader
"let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_expandabbr_key='<C-e>'
