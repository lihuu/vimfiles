vim9script
if !has('vim9script')
  finish
endif
#使用vim9 script 编写的配置
const isWindows = has('win16') || has('win32') || has('win64')
const isMac = has('mac') || has('macunix')
const isLinux = has('linux')
const isGui = has('gui_running')
var configPath: string
if isWindows
  configPath = "$HOME/vimfiles"
else
  configPath = "~/.vim"
endif

set nocompatible
if !isWindows
    set shell = /bin/zsh
endif
set number
set foldmethod=diff
set laststatus=2
set ch=1
syntax on
syntax enable
set ts=4
set shiftwidth=4
set expandtab
set textwidth=100
set cursorline
set autoread

if has('termguicolors')
    set termguicolors
endif
colorscheme molokai
if ! isGui
    set t_Co=256
    set mouse=a
endif
set fdm=marker
if isWindows && isGui
    set guifont=Consolas\ NF:h14:i
else
    set guifont=Monospace\ Italic\ 12
endif

if s:isMac && has("gui_running")
    set transparency=20
endif
set langmenu='en'
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set fileencodings=utf-8,chinese,latin-1,latin1
set encoding=utf-8
set nobackup
set noundofile
set noerrorbells
set novisualbell
set visualbell t_vb=
if isWindows && has("autocmd") && isGui
    au GUIEnter * set t_vb=
endif


g:mapleader = "\<space>"

inoremap <c-u>  <ESC>~i
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

autocmd FileType html set tabstop=2 shiftwidth=2


filetype off
#git clone https://github.com/VundleVim/Vundle.vim.git
if isWindows
    set rtp+=$HOME/vimfiles/autoload/plug.vim
    legacy call plug#begin('$HOME/vimfiles/plugged/')
    source $HOME/vimfiles/plugins.vim
    legacy call plug#end()
else
    #set rtp+=~/.vim/autoload/plug.vim
    legacy call plug#begin('~/.vim/plugged')
    source ~/.vim/plugins.vim
    legacy call plug#end()
endif

filetype plugin indent on
