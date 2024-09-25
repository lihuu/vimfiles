

highlight MyHighlight ctermfg=yellow ctermbg=NONE guifg=yellow guibg=NONE

let s:header = [
      \ '',
      \ '',
      \ '██╗     ██╗██╗  ██╗██╗   ██╗██╗   ██╗██╗███╗   ███╗',
      \ '██║     ██║██║  ██║██║   ██║██║   ██║██║████╗ ████║',
      \ '██║     ██║███████║██║   ██║██║   ██║██║██╔████╔██║',
      \ '██║     ██║██╔══██║██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      \ '███████╗██║██║  ██║╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
      \ '╚══════╝╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
      \ '',
      \ '']


function! dashboard#content#paintHeader() abort
    let l:maxLineLength= dashboard#utils#maxLineLength(s:header)
    let l:padding = s:calcPadding(l:maxLineLength)
    call dashboard#utils#centerLines(s:header,l:padding)
endfunction

function! s:centerLines(lines,padding)
    for line in a:lines
        let centered_line = repeat(' ', a:padding) . s:dashBoardEntryFormat(line)
        call append('$', centered_line)
        syntax match MyHighlight line  containedin=dashboard
    endfor
endfunction

function s:calcPadding(length) abort
    let l:width = winwidth(0)
    return max([0, (l:width - a:length) / 2])
endfunction

function! dashboard#content#paintDashBoard()
    " 在这里绘制需要展示的图形
    if !&modifiable
        setlocal modifiable
    endif
    if !s:buf_is_empty(0)
        silent! %d _
    endif
    call dashboard#content#paintHeader()
    let lines = s:GetRecentFiles()
    let max_length = s:maxLineLength(lines)
    let width = winwidth(0)
    let padding = max([0, (width - max_length) / 2])
    call append("$", repeat(" ", padding-4) . "Recent files:")
    call s:centerLines(lines,padding)
    silent! setlocal nomodified nomodifiable
endfunction


function! s:dashBoardEntryFormat(entry_path) abort
  if exists('*WebDevIconsGetFileTypeSymbol')
    return WebDevIconsGetFileTypeSymbol(a:entry_path) . ' ' . a:entry_path
  else
    echom 'WebDevIconsGetFileTypeSymbol not found'
    return a:entry_path
  endif
endfunction
