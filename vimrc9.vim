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



def g:CompileAndRun()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -std=c++11 -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'lua'
        exec "!lua %"
    elseif &filetype == 'js' || &filetype == 'javascript.jsx' || &filetype == 'javascript'
        #some common javascript file will be treat as jsx file
        exec "!node %"
	elseif &filetype == 'python'
		exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        #exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
enddef

nmap <F5> :call g:CompileAndRun()<CR>