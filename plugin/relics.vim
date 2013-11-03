" relics: Manipulate development relics (think 'console.log', 'debugger', but
" in your favorite programming language) with simple commands.
" Author:         mmozuras
" HomePage:       https://github.com/mmozuras/vim-relics
" Readme:         https://github.com/mmozuras/vim-relics/blob/master/README.md
" Version:        0.0.1

command! NextRelic call NextRelic()
command! PreviousRelic call PreviousRelic()
command! DeleteRelics call DeleteRelics()
command! DeleteRelicLines call DeleteRelicLines()

let g:relics = { 'javascript': ['console.log.*\);\?', 'debugger;\?'],
                \'ruby': ['binding\.pry', 'puts.*;\?'] }

function! NextRelic()
  let regex = s:RelicsRegex()
  execute "normal! /".regex."\<cr>"
endfunction

function! PreviousRelic()
  let regex = s:RelicsRegex()
  execute "normal! ?".regex."\<cr>"
endfunction

function! DeleteRelics()
  let regex = s:RelicsRegex()
  execute "%s/".regex."//"
endfunction

function! DeleteRelicLines()
  let regex = s:RelicsRegex()
  execute "g/".regex."/normal ndd"
endfunction

function! s:CurrentFiletypes()
  return split(&filetype, '\.')
endfunction

function! s:Relics()
  let result = []
  for ft in s:CurrentFiletypes()
    for relic in g:relics[ft]
      call add(result, relic)
    endfor
  endfor
  return result
endfunction

function! s:RelicsRegex()
  return join(s:Relics(), '\|')
endfunction
