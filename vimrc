"Auto fold config ---- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" Detect os type {{{
"函数尽量用大写字母开头
"没有作用域限制的函数必须以一个大写字母开头!
silent function! OSX()
return has('macunix')||has('mac')
endfunction

silent function! LINUS()
return has('unix') && !has('macunix') && !has('win32unix')
endfunction

silent function! WINDOWS()
return (has('win32')||has('win64'))
endfunction
" }}}
"Script wide variables  {{{
let s:isWindows = has('win16') || has('win32') || has('win64')
let s:isMac = has('mac')||has('macunix')
let s:isLinux = has('linux')
let s:isNvim = has('nvim')

if s:isNvim
    if s:isWindows
        let s:configPath="$HOME/AppData/Local/nvim"
    else
        let s:configPath="~/.config/nvim"
    endif
else
    if s:isWindows
        let s:configPath="$HOME/vimfiles"
    else
        let s:configPath="~/.vim"
    endif
endif
" }}}

set nocompatible "Must be first line

if !WINDOWS()
    set shell=/bin/zsh
endif

"if WINDOWS()
"  set directory=%USERDATA%.vim\swap//
"else
"  set directory=$HOME/.vim/swap//
"endif
"
"

"set noswapfile
set foldmethod=diff

"if WINDOWS()
"    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
"endif

set laststatus=2
syntax on
set number
"设置相对的行号
"set relativenumber
syntax enable
set ts=4
set shiftwidth=4
set textwidth=100
set expandtab
"set encoding=UTF-8
"set background=dark
set cursorline
set autoread

if has('termguicolors')
    set termguicolors
endif
"colorscheme torte
colorscheme molokai
if ! has('gui_running')
    set t_Co=256
    set mouse=a
endif
"set fdm=indent
"set sourcecode folding
set fdm=marker
if s:isWindows && has("gui_running")
    "set guifont=Consolas:h14:i
    set guifont=Consolas\ NF:h14:i
else
    set guifont=Monospace\ Italic\ 12
endif

if s:isMac && has("gui_running")
    set transparency=20
endif


"set guifont=Consolas:h14:i
"set guifont=Consolas:h14:i
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
"Diff function {{{
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
" }}}

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
"nerdtree 
let mapleader="\<space>"

"nerdtree 配置文件
" Open the existing NERDTree on each new tab.

"
"insert 模式中删除一行
"inoremap <c-d> <ESC>ddi
"insert 模式大小写切换
inoremap <c-u>  <ESC>~i

"打开vim配置文件的映射
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"配置文件生效的映射
nnoremap <leader>sv :source $MYVIMRC<cr>


"
"Extral Configuration
let g:jsx_ext_required=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim wiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/OneDrive/mywiki/'}]

let delimitMate_matchpairs="(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"

"*****************vim-markdown configuration start *********
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_toc_autofit = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => coc-prettier 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:prettier#autoformat = 0                                                                                       
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html PrettierAsync
"let g:prettier#config#parser='babylon'


if s:isWindows
    source $HOME/vimfiles/coc-config.vim
    source $HOME/vimfiles/run.vim
    source $HOME/vimfiles/markdown-preview-config.vim
else
    source ~/.vim/coc-config.vim
    source ~/.vim/run.vim
    source ~/.vim/markdown-preview-config.vim
endif

noremap <leader>fp :e $MYVIMRC<cr>

noremap <leader>ff :Files<cr>

"
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => emmet-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='i' " value: n i v a
let g:user_emmet_expandabbr_key='<C-e>'

"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
"
"autocmd! PrettierFileDetect BufNewFile,BufReadPost *.js,*jsx setfiletype javascript


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-rooter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json','pom.xml']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 透明度设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if WINDOWS()
    autocmd GUIEnter * silent! WToggleClean
    autocmd GUIEnter * silent! WSetAlpha 234
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__','node_modules']
let g:NERDTreeWinSize=35
noremap <leader>nn :NERDTreeToggle<cr>
noremap <leader>fn :NERDTreeToggle<cr>
noremap <leader>nb :NERDTreeFromBookmark<Space>
noremap <leader>nf :NERDTreeFind<cr>

augroup loadNeardTree
    autocmd!
    "autocmd BufWinEnter * silent NERDTreeMirror
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
augroup END



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>gg :GitGutterToggle<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tab 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>h :tabprevious<cr>
noremap <leader>l :tabnext<cr>

noremap <leader>tn :tabnew<cr>
noremap <leader>to :tabonly<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '40%' }
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

"command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'options': ['--layout=reverse']}, <bang>0)

noremap <leader>bb :Buffers<cr>
noremap <c-p> :Files<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERD Commenter 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-highlightedyank config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:highlightedyank_highlight_duration = 100
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-startify config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]


