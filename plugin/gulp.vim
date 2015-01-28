if exists("g:loaded_gulp")
    finish
endif
let g:loaded_gulp = 1

command! -nargs=1 GulpTask :call <SID>GulpTask(<f-args>)

function s:GulpTask(task) range
    silent execute "!gulp " a:task " > /dev/null &"
    redraw!
    echo "Started task:" a:task
endfunction
