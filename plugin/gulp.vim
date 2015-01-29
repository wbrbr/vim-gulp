if exists("g:loaded_gulp") " Load the plugin once
    finish
endif
let g:loaded_gulp = 1 

command! -nargs=1 GulpTask :call <SID>GulpTask(<f-args>) " create the :GulpTask command

function s:GulpTask(task) " The s: prefix means the function cannot be called via :call GulpTask
    silent execute "!gulp " a:task " > /dev/null &"
    " If you know a better way to execute a command please make a PR
    redraw!
    echo "Started task:" a:task
endfunction
