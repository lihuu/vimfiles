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

if has("vim9script")
    if s:isWindows
        source $HOME/vimfiles/vimrc9.vim
    else
        source ~/.vim/vimrc9.vim
    endif
else
    if s:isWindows
        source $HOME/vimfiles/vimrc8.vim
    else
        source ~/.vim/vimrc8.vim
    endif
endif

"augroup filetyp_js
""  autocmd!
""  autocmd FileType javascript,typescriptreact,typescript setlocal foldmethod=syntax
""  autocmd FileType javascript,typescriptreact,typescript setlocal foldlevelstart=99
"augroup END

"if WINDOWS()
"  set directory=%USERDATA%.vim\swap//
"else
"  set directory=$HOME/.vim/swap//
"endif
"
"

"set noswapfile

"if WINDOWS()
"    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
"endif


"set guifont=Consolas:h14:i
"set guifont=Consolas:h14:i
"set guifont=Fira\ Code:h13:i
let $LANG='en'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
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

"Load plugins{{{
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
"}}}

"vim-script的仓库

"
"+---------------------------------------------------------
"|自定义按键
"|
"+---------------------------------------------------------
"nerdtree 
let mapleader="\<space>"

"
"Extral Configuration
let g:jsx_ext_required=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim wiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim wiki config {{{
let g:vimwiki_list = [{'path': '~/OneDrive/mywiki/'}]

let delimitMate_matchpairs="(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"
"}}}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => coc-prettier 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Coc prettier config {{{
let g:prettier#autoformat = 0                                                                                       
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html PrettierAsync
"let g:prettier#config#parser='babylon'
"}}}

if s:isWindows
    source $HOME/vimfiles/coc-config.vim
    source $HOME/vimfiles/markdown-preview-config.vim
else
    source ~/.vim/coc-config.vim
    source ~/.vim/markdown-preview-config.vim
endif

noremap <leader>fp :e $MYVIMRC<cr>

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
"let g:airline_theme='luna'
let g:airline_theme='virtualenv'

"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
"
"autocmd! PrettierFileDetect BufNewFile,BufReadPost *.js,*jsx setfiletype javascript
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-rooter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-rooter config {{{
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json','pom.xml']
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 透明度设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if WINDOWS()
    autocmd GUIEnter * silent! WToggleClean
    autocmd GUIEnter * silent! WSetAlpha 234
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => git gutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"git gutter config {{{
let g:gitgutter_enabled=0
nnoremap <silent> <leader>gg :GitGutterToggle<cr>
"}}}

" => vim-startify config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-startify config {{{
 let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]

let g:startify_files_number = 20
let g:startify_custom_header_quotes =
      \ startify#fortune#predefined_quotes() + [['夫天地者，万物之逆旅也；光阴者，百代之过客也', '','李白']]
"}}}

set foldlevelstart=99
set foldcolumn=1
autocmd FileType typescriptreact,javascript,typescript,javascriptreact setlocal fdm=syntax

autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<cr>
autocmd BufWrite *.lua call LuaFormat()
