if !has('vim9script')
    finish
endif
let s:config_file = substitute($MYVIMRC, '\\', '/', 'g')
let s:config_dir = fnamemodify(s:config_file, ':h')

function! s:LoadConfigFile(filename)
    let config_file = s:config_dir . '/' . a:filename
    if filereadable(config_file)
        execute 'source ' . config_file
    else
        echohl WarningMsg | echom 'File not found: ' . config_file | echohl None
    endif
endfunction

call s:LoadConfigFile('plugins.vim')
call s:LoadConfigFile('vimrc9.vim')

let g:startify_session_autoload=0
let g:startify_update_oldfiles=0
