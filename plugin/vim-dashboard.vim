if has('nvim')
  finish
endif

augroup dashboard
  autocmd VimEnter * call s:on_vimentry()
  autocmd VimResized * call dashboard#resize()
augroup END

function! s:on_vimentry()
  " 读取最近打开的文件列表
  if !argc() && line('$') == 1 && getline('.') == ''
    call dashboard#instance()
  endif

  autocmd! dashboard VimEnter
endfunction




