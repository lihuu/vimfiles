" |eovim config
" +-------------+--------------+----------+----------+
let s:isWindows = has('win16') || has('win32') || has('win64')
if has('nvim-0.5.0.0')
    call v:lua.require("core")
    source run.vim
    if s:isWindows
        source $HOME/AppData/Local/nvim/run.vim
    else
        source $HOME/.config/nvim/run.vim
    endif
else
    let s:isMac = has('mac')||has('macunix')
    let s:isLinux = has('linux')
    let s:isNvim = has('nvim')

    set hidden
    set nocompatible
    set laststatus=2
    syntax on
    set nu
    syntax enable
    set ts=4
    set shiftwidth=4
    set autoread
    set expandtab

    "set background=dark
    set cursorline
    set mouse=a
    if has('termguicolors')
        set termguicolors
    endif
    "set termguicolors
    "colorscheme torte
    colorscheme molokai
    "set fdm=indent set sourcecode folding
    set fdm=marker
    "set guifont=Monaco:h15:i
    "set guifont=Fira\ Code:h15:i
    "set guifont=DejaVu\ Sans\ Mono:h13:i
    "set guifont=Fira\ Code:h13:i

    let $LANG='en'
    set langmenu='en'
    behave mswin
    set fileencodings=utf-8,chinese,latin-1,latin1
    set encoding=utf-8
    set nobackup
    set nowritebackup
    set noundofile

    source $VIMRUNTIME/mswin.vim

    "set pythonthreedll=python36.dll
    filetype off
    if s:isWindows
        call plug#begin('~/vimfiles/plugged')
        source $HOME/AppData/Local/nvim/plugins.vim
        Plug 'equalsraf/neovim-gui-shim'
        call plug#end()
    else
        call plug#begin('~/.vim/plugged')
        source $HOME/.config/nvim/plugins.vim
        call plug#end()
    endif

    filetype plugin indent on

    let mapleader="\<space>"
    "vim-script的仓库
    "+---------------------------------------------------------
    "|自定义按键
    "|
    "+---------------------------------------------------------
    "
    "insert 模式中删除一行
    inoremap <c-d> <ESC>ddi
    inoremap <c-u>  <ESC>~i

    "打开vim配置文件的映射
    noremap <leader>ev :vsplit $MYVIMRC<cr>
    "配置文件生效的映射
    nnoremap <leader>sv :source $MYVIMRC<cr>



    "
    "Extral Configuration
    let g:jsx_ext_required=0


    "wiki configuration
    "

    let delimitMate_matchpairs="(:),[:],{:}"
    au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"

    "vim-markdown configuration
    let g:vim_markdown_folding_disabled=1
    let g:vim_markdown_toc_autofit=1

    let g:prettier#autoformat = 0                                                                                       
    command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
    autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier

    if s:isWindows
        source $HOME/AppData/Local/nvim/coc-config.vim
        source $HOME/AppData/Local/nvim/markdown-preview-config.vim
        source $HOME/AppData/Local/nvim/run.vim
    else
        source $HOME/.config/nvim/coc-config.vim
        source $HOME/.config/nvim/markdown-preview-config.vim
        source $HOME/.config/nvim/run.vim
    endif


    "nerdtree 按键映射
    noremap <leader>fn :NERDTreeToggle<cr>

    let g:airline_theme='luna'

    noremap <leader>h <esc>:tabprevious<cr>
    noremap <leader>l <esc>:tabnext<cr>

    "Moving fastly
    noremap <c-j> 5j
    noremap <c-k> 5k
    noremap <c-h> 5h
    noremap <c-l> 5l

    "fzf 
    noremap <leader>ff :Files<cr>
    "noremap <c-o> :Buffers<cr>
    noremap <leader>bb :Buffers<cr>
    noremap <leader>F :Rg<cr>
    let g:fzf_preview_window = []
    let g:fzf_layout = {'down':'40%'}
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


    "Config for emmet-vim
    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
    let g:user_emmet_mode='i' " value: n i v a
    ""remap the default <C-Y> leader
    "let g:user_emmet_leader_key='<C-Z>'
    let g:user_emmet_expandabbr_key='<C-e>'

    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => vim-highlightedyank config
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    let g:highlightedyank_highlight_duration = 100


    noremap <leader>fp :e $MYVIMRC<cr>

    let g:bracey_browser_command = 'chrome'
    let g:bracey_server_log=$HOME+"/bracey.log"


    set foldlevelstart=99
    autocmd FileType typescriptreact,javascript,typescript setlocal fdm=syntax




endif

