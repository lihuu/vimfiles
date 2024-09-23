if !has('vim9script')
    echo "Vim 9 script is not supported"
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
