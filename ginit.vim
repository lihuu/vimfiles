" neovim-qt config
"
let s:isWindows = has('win16') || has('win32') || has('win64')
let s:isMac = has('mac')||has('macunix')

if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    if s:isWindows
        GuiFont! Consolas\ NF:h14
    elseif s:isMac
        GuiFont! Consolas\ NF:h25
    else
        GuiFont! Consolas\ NF:h14
    endif
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif

" Gui Opacity
"
if exists('GuiWindowOpacity')
    GuiWindowOpacity 0.8
endif

if exists('GuiRenderLigatures')
    GuiRenderLigatures 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

call rpcnotify(0, 'Gui', 'WindowOpacity', 0.8)
