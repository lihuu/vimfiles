
function! dashboard#utils#buf_is_empty(bufnr) abort
  let l:bufnr = a:bufnr ? a:bufnr : 0
  return line('$') == 1 && getline(1) == ''
endfunction

function! dashboard#utils#maxLineLength(lines)
  let l:max_length = 0
  for line in a:lines
    let l:line_length = strchars(line)
    if l:line_length > l:max_length
      let l:max_length = l:line_length
    endif
  endfor
  if l:max_length==0
    let l:max_length = 100
  endif
  return l:max_length
endfunction


function! dashboard#utils#centerLines(lines,padding)
  for line in a:lines
    let centered_line = repeat(' ', a:padding) . line
    call append('$', centered_line)
  endfor
endfunction


function! dashboard#utils#getRecentFiles()
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


function! s:getRecentFiles()
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
