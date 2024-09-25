function! s:buf_is_empty(bufnr) abort
    let l:bufnr = a:bufnr ? a:bufnr : 0
    return line('$') == 1 && getline(1) == ''
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

function! dashboard#instance() abort
    let mode = mode()
    if  mode == 'i' && !&modifiable
        return
    endif

    if !&hidden && &modified
        write
        return
    endif

    if s:buf_is_empty(0)
        let buf=bufnr('%')
    else
        let buf=bufnr('%',1)
    endif

    let win_id = win_getid()
    call win_execute(win_id, 'buffer ' . buf)

    silent! setlocal
                \ bufhidden=wipe
                \ colorcolumn=
                \ foldcolumn=0
                \ matchpairs=
                \ modifiable
                \ nobuflisted
                \ nocursorcolumn
                \ nocursorline
                \ nolist
                \ nonumber
                \ noreadonly
                \ norelativenumber
                \ nospell
                \ noswapfile
                \ signcolumn=no
                \ filetype=dashboard
                \ statusline=dashboard

    " 在这里绘制需要展示的图形
    call s:paintDashBoard()
    " 设置buf为未修改状态以及当前buffer为只读
endfunction


function! dashboard#resize()
    if &filetype == 'dashboard'
        call s:paintDashBoard()
    endif
endfunction

function! s:paintDashBoard()
    " 在这里绘制需要展示的图形
    if !&modifiable
        setlocal modifiable
    endif
    if !s:buf_is_empty(0)
        silent! %d _
    endif
    call dashboard#content#paintHeader()
    let l:lines = s:GetRecentFiles()
    let l:max_length = dashboard#utils#maxLineLength(l:lines)
    let l:width = winwidth(0)
    let l:padding = max([0, (l:width - l:max_length) / 2])
    call append("$", repeat(" ", l:padding-4) . "Recent files:")
    call dashboard#utils#centerLines(l:lines,l:padding)
    silent! setlocal nomodified nomodifiable
endfunction

