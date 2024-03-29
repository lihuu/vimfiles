let s:isWindows = has('win16') || has('win32') || has('win64')
let s:isMac = has('mac')||has('macunix')
let s:isLinux = has('linux')

if s:isWindows
    source $HOME/vimfiles/vimrc9.vim
else
    source ~/.vim/vimrc9.vim
endif

let $LANG='en'
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
let g:vimwiki_list = [{'path': '~/OneDrive/mywiki/'}]

let delimitMate_matchpairs="(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"


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
let g:rooter_silent_chdir = 1
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json','pom.xml']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 透明度设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if s:isWindows
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

set foldlevelstart=99
set foldcolumn=1
autocmd FileType typescriptreact,javascript,typescript,javascriptreact setlocal fdm=syntax

"autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<cr>
autocmd BufWrite *.lua silent! call FormatLua()
set cmdheight=1

iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
