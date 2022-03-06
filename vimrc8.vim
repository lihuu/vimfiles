let s:isWindows = has('win16') || has('win32') || has('win64')
let s:isMac = has('mac')||has('macunix')
let s:isLinux = has('linux')
set nocompatible "Must be first line
if s:isWindows
  set shell=/bin/zsh
endif
set foldmethod=diff
set laststatus=2
set ch=1
syntax on
set number
"设置相对的行号
"set relativenumber
syntax enable
"tab替换为空格，大小设置为4
set ts=4
set shiftwidth=4
set expandtab
set textwidth=100
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


inoremap <c-u>  <ESC>~i

"打开vim配置文件的映射
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"配置文件生效的映射
nnoremap <leader>sv :source $MYVIMRC<cr>

autocmd FileType html set tabstop=2 shiftwidth=2

"Run compiler
func! CompileAndRun()
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
    elseif (&filetype == 'js'|| &filetype == 'javascript.jsx')
        "some common javascript file will be treat as jsx file
        exec "!time node %"
	elseif &filetype == 'python'
		exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunc

"Run gdb
func! Rungdb()
    exec "w"
    exec "!g++ % -std=c++11 -g -o %<"
	exec "!gdb ./%<"
endfunc

nmap <F5> :call CompileAndRun()<CR>
nmap <F8> :call Rungdb()<CR>

noremap <leader>h :tabprevious<cr>
noremap <leader>l :tabnext<cr>

noremap <leader>tn :tabnew<cr>
noremap <leader>to :tabonly<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove<cr>

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_toc_autofit = 1

let g:NERDTreeWinPos = "left"
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

let g:gitgutter_enabled=0
nnoremap <silent> <leader>gg :GitGutterToggle<cr>

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

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

let g:fzf_external_bash= 'C:\tools\msys64\usr\bin\bash.exe'
"command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'options': ['--layout=reverse']}, <bang>0)

noremap <leader>bb :Buffers<cr>
noremap <leader>ff :Files<cr>


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
" => emmet-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_install_global = 0
autocmd FileType html,css,javasriptreact,typescriptreact EmmetInstall
let g:user_emmet_mode='i' " value: n i v a
let g:user_emmet_expandabbr_key='<C-e>'

let g:highlightedyank_highlight_duration = 100



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-visual-multi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-d>'           " replace visual C-n

let g:gitgutter_enabled=0
nnoremap <silent> <leader>gg :GitGutterToggle<cr>

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
