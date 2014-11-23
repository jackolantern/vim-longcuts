" A minimal snippet framework for Vim.
" Last Change:	2014 Nov 14
" Maintainer:	John Connor <john.theman.connor@gmail.com>
" License:	This file is placed in the public domain.

" THANKS IN PART TO: http://www.vim.org/scripts/script.php?script_id=143

function! GetNearestWord()
  let c = col ('.')-1
  let l = line('.')
  let ll = getline(l)
  let ll1 = strpart(ll,0,c)
  let ll1 = matchstr(ll1,'\\\S*$')
  let ll2 = strpart(ll,c,strlen(ll)-c+1)
  let ll2 = strpart(ll2,0,match(ll2,'$\|\s'))
  return ll1.ll2
endfunction


function! BufReplace()
    let word = GetNearestWord()

    if matchstr(word, "^\\\S*$") == ""
        return
    endif

    let replace = get(g:LongCuts, word, "")
    if replace == ""
        return
    endif
    
    let c = matchstr(getline('.'), '\%' . col('.') . 'c.')
    if c == "\\"
        :execute "normal dwdwi" . replace
    else
        :execute "normal ?\<cr>dwdwi" . replace
    endif
endfunction
