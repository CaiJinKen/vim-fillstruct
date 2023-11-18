function! s:FillStruct() 
    let cmd = [
        \ '!fillstruct',
        \]
    let cmd = add(cmd, '-file' . ' ' . expand('%'))
    let cmd = add(cmd, '-line' . ' ' . line('.'))

    execute join(cmd)
endfunction

augroup fillstruct 
    autocmd!
    autocmd FileType go
        \ command! -bar -nargs=0 -buffer -range=% FillStruct call s:FillStruct()
augroup end

