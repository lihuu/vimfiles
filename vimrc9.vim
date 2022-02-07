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
    set shell=/bin/zsh
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
set noshowmode

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
nnoremap <leader>ev :silent! vsplit $MYVIMRC<cr>
nnoremap <leader>sv :silent! source $MYVIMRC<cr>

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

noremap <leader>h :tabprevious<cr>
noremap <leader>l :tabnext<cr>

noremap <leader>tn :tabnew<cr>
noremap <leader>to :tabonly<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove<cr>


g:vim_markdown_folding_disabled = 1
g:vim_markdown_toc_autofit = 1


g:NERDTreeWinPos = "left"
const NERDTreeShowHidden = 0
const NERDTreeIgnore = ['\.pyc$', '__pycache__', 'node_modules']
g:NERDTreeWinSize = 35
noremap <leader>nn :silent! NERDTreeToggle<cr>
noremap <leader>fn :silent! NERDTreeToggle<cr>
noremap <leader>nb :silent! NERDTreeFromBookmark<Space>
noremap <leader>nf :silent! NERDTreeFind<cr>

augroup loadNeardTree
    autocmd!
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
augroup END


g:gitgutter_enabled = 0
nnoremap <silent> <leader>gg :GitGutterToggle<cr>




g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-x': 'split', 'ctrl-v': 'vsplit' }

g:fzf_layout = { 'down': '40%' }
g:fzf_colors = { 'fg':      ['fg', 'Normal'], 'bg':      ['bg', 'Normal'], 'hl':      ['fg', 'Comment'], 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'], 'bg+':     ['bg', 'CursorLine', 'CursorColumn'], 'hl+':     ['fg', 'Statement'], 'info':    ['fg', 'PreProc'], 'border':  ['fg', 'Ignore'], 'prompt':  ['fg', 'Conditional'], 'pointer': ['fg', 'Exception'], 'marker':  ['fg', 'Keyword'], 'spinner': ['fg', 'Label'], 'header':  ['fg', 'Comment'] }

g:fzf_external_bash = 'C:\tools\msys64\usr\bin\bash.exe'

noremap <leader>bb :Buffers<cr>
noremap <leader>ff :Files<cr>


# Create default mappings
g:NERDCreateDefaultMappings = 1

# Add spaces after comment delimiters by default
g:NERDSpaceDelims = 1

# Use compact syntax for prettified multi-line comments
g:NERDCompactSexyComs = 1

# Align line-wise comment delimiters flush left instead of following code indentation
g:NERDDefaultAlign = 'left'

# Set a language to use its alternate delimiters by default
g:NERDAltDelims_java = 1

# Add your own custom formats or override the defaults
g:NERDCustomDelimiters = { 'c': { 'left': '/**', 'right': '*/' } }

# Allow commenting and inverting empty lines (useful when commenting a region)
g:NERDCommentEmptyLines = 1

# Enable trimming of trailing whitespace when uncommenting
g:NERDTrimTrailingWhitespace = 1

# Enable NERDCommenterToggle to check all selected lines is commented or not 
g:NERDToggleCheckAllLines = 1

g:user_emmet_install_global = 0
autocmd FileType html,css,javasriptreact,typescriptreact EmmetInstall
g:user_emmet_mode = 'i' # value: n i v a
g:user_emmet_expandabbr_key = '<C-e>'



g:highlightedyank_highlight_duration = 100

g:VM_maps = {}
g:VM_maps['Find Under'] = '<C-d>'           # replace C-n
g:VM_maps['Find Subword Under'] = '<C-d>'           # replace visual C-n

g:gitgutter_enabled = 0
nnoremap <silent> <leader>gg :GitGutterToggle<cr>


nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

g:lightline = {
      \ 'colorscheme': 'darcula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


