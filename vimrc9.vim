vim9script
const isWindows = has('win16') || has('win32') || has('win64')
const isMac = has('mac') || has('macunix')
const isLinux = has('linux')
const isGui = has('gui_running')

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
set softtabstop=4
set textwidth=100
set cursorline
set autoread
set noshowmode
set so=5
set ruler

set incsearch

if has('termguicolors')
    set termguicolors
endif
colorscheme onedark
if ! isGui
    set t_Co=256
    set mouse=a
endif
set fdm=marker
if isWindows && isGui
    set guifont=BlexMono\ Nerd\ Font\ Mono:h16:i
endif

if isMac && has("gui_running")
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
noremap <c-j> 5j
noremap <c-k> 5k
noremap <c-h> 5h
noremap <c-l> 5l
noremap <leader>fp :e $MYVIMRC<cr>
noremap <leader>s :sort<cr>
nnoremap <silent> <leader>gg :GitGutterToggle<cr>
cnoremap w!! w !sudo tee > /dev/null %

# autocmd config
autocmd FileType html set tabstop=2 shiftwidth=2
autocmd BufWrite *.lua silent! call FormatLua()
autocmd FileType typescriptreact,javascript,typescript,javascriptreact setlocal fdm=syntax
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier


command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

# functions 
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


var config_dir = fnamemodify(substitute($MYVIMRC, '\\', '/', 'g'), ':h')

def LoadConfigFile(name: string)
    var config_file = config_dir .. "/" .. name
    if filereadable(config_file)
        execute 'source ' .. config_file
    else
        echohl WarningMsg
        echom 'File not found: ' .. config_file
        echohl None
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


#nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

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

def CopyDiffToBuffer(input: list<string>, output: list<string>, bufname: string)
    const min_len = min([len(input), len(output)])

    for i in range(0, min_len - 1)
        const output_line = output[i]
        const input_line  = input[i]
        if input_line !=# output_line
            call setline(i + 1, output_line) 
        endif
    endfor

    if len(input) != len(output)
        if min_len == len(output) 
            call deletebufline(bufname, min_len + 1, "$")
        else 
            call append("$", output[min_len :])
        endif
    endif
    redraw!
enddef


#调用lua-format 格式化lua脚本
#参考：https://github.com/andrejlevkovitch/vim-lua-format
def g:FormatLua()
    const input = getline(1, "$")
    const error_file = tempname()
    var flags = " -i "
    const config_file = findfile(".lua-format", ".;")

    if empty(config_file) == 0
        flags = flags .. " -c " .. config_file
    endif

    const output_str = system("lua-format" .. flags .. " 2> " .. error_file, input)

    if empty(output_str) == 0
        const output = split(output_str, "\n")
        CopyDiffToBuffer(input, output, bufname("%"))
        lexpr ""
        lwindow
    else
        const errors = readfile(error_file)
        const sourceFile = bufname("%")
        call insert(errors, sourceFile)
        set efm=%+P%f,line\ %l:%c\ %m,%-Q
        lexpr errors
        lwindow 5
    endif

    call delete(error_file)
enddef

#autocmd BufWritePost *.go silent! !gofmt -w %
def ShowScriptnamesInBuffer()
  tabnew
  const input = execute('scriptnames')
  const result = split(input, "\n")
  call setline(1, result)
enddef

command! ShowScriptnames call ShowScriptnamesInBuffer()


if isWindows
    autocmd GUIEnter * silent! WToggleClean
    autocmd GUIEnter * silent! WSetAlpha 234
endif



g:jsx_ext_required = 0

g:vimwiki_list = [{'path': '~/OneDrive/mywiki/'}]

g:prettier#autoformat = 0                                                                                       

LoadConfigFile('coc-config.vim')
LoadConfigFile('markdown-preview-config.vim')
g:airline_theme = 'virtualenv'

g:rooter_silent_chdir = 1
g:rooter_change_directory_for_non_project_files = 'current'
g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json', 'pom.xml']
g:gitgutter_enabled = 0

set foldlevelstart=99
set foldcolumn=1

set cmdheight=1

iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

