

highlight MyHighlight ctermfg=yellow ctermbg=NONE guifg=yellow guibg=NONE

let s:header = [
      \ '██╗     ██╗██╗  ██╗██╗   ██╗██╗   ██╗██╗███╗   ███╗',
      \ '██║     ██║██║  ██║██║   ██║██║   ██║██║████╗ ████║',
      \ '██║     ██║███████║██║   ██║██║   ██║██║██╔████╔██║',
      \ '██║     ██║██╔══██║██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      \ '███████╗██║██║  ██║╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
      \ '╚══════╝╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
      \ '']


function! dashboard#content#paintHeader() abort
  let l:maxLineLength= dashboard#utils#maxLineLength(s:header)
  let l:padding = s:calcPadding(l:maxLineLength)
  call dashboard#utils#centerLines(['',''], l:padding)
  call dashboard#utils#centerLines(s:header,l:padding)
  call dashboard#utils#centerLines(['',''], l:padding)
endfunction

let b:dashboard = {'entries':{} }

function! s:centerLines(lines,padding,initEntries)
  for line in a:lines
    let centered_line = repeat(' ', a:padding) . s:dashBoardEntryFormat(line)
    call append('$', centered_line)
    if a:initEntries == 1
      let b:dashboard.entries[line('$')] = line
    endif
  endfor
endfunction

function s:calcPadding(length) abort
  let l:width = winwidth(0)
  return max([0, (l:width - a:length) / 2])
endfunction

function! dashboard#content#paintDashBoard(initEntries)
  " 在这里绘制需要展示的图形
  if !&modifiable
    setlocal modifiable
  endif
  if !dashboard#utils#buf_is_empty(0)
    silent! %d _
  endif
  call dashboard#content#paintHeader()
  call dashboard#content#paintRecentFiles(a:initEntries)
  silent! setlocal nomodified nomodifiable
endfunction

nnoremap <buffer><nowait><silent> <cr> :call OpenBuffers()<cr>

function! OpenBuffers(...) abort
  let l:filePath = substitute(get(b:dashboard.entries,line('.'),''),"\\","/","g")
  if l:filePath != ''
    execute 'edit ' . l:filePath
  endif
endfunction


function! s:GetRecentFiles()
  let recent_files = v:oldfiles

  let file_list = []
  let maxSize = 10
  for item in recent_files
    if item != '' && len(file_list)< maxSize 
      call add(file_list, item)
    endif
  endfor

  return file_list
endfunction

function! dashboard#content#paintRecentFiles(initEntries) abort
  let l:lines = s:GetRecentFiles()
  let l:maxLength = dashboard#utils#maxLineLength(l:lines)
  let l:padding = max([0, (winwidth(0) - l:maxLength) / 2])
  call append("$", repeat(" ", l:padding-4) . "Recent files:")
  call s:centerLines(l:lines,l:padding,a:initEntries)
endfunction


function! s:dashBoardEntryFormat(entry_path) abort
  " 这里依赖vim-devicons插件，需要在加载这个插件之后才能使用
  " 这里会加载文件对应的图标
  if exists('*WebDevIconsGetFileTypeSymbol')
    return WebDevIconsGetFileTypeSymbol(a:entry_path) . ' ' . a:entry_path
  else
    return a:entry_path
  endif
endfunction


