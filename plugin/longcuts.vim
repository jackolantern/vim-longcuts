" A minimal snippet framework for Vim.
" Last Change:	2015 Dec 11
" Maintainer:	John Connor <john.theman.connor@gmail.com>
" License:	This file is placed in the public domain.

" THANKS IN PART TO: http://www.vim.org/scripts/script.php?script_id=143

function! longcuts#GetNearestWord()
  let c = col ('.')-1
  let l = line('.')
  let ll = getline(l)
  let ll1 = strpart(ll,0,c)
  let ll1 = matchstr(ll1,'\S*$')
  let ll2 = strpart(ll,c,strlen(ll)-c+1)
  let ll2 = strpart(ll2,0,match(ll2,'$\|\s'))
  return ll1.ll2
endfunction

function! longcuts#BufReplace()
    let word = longcuts#GetNearestWord()

    if matchstr(word, '^\S*$') == ""
        echo "No word under cursor."
        return
    endif

    let replace = get(g:LongCuts, word, "")
    if replace == ""
        echo "Not found: " . word
        return
    endif
    
    let c = matchstr(getline('.'), '\%' . col('.') . 'c.')
    if c == '\'
        :execute 'normal! d2wi' . replace
    else
        :execute "normal! ?\\\<cr>d2wi" . replace . ' '
    endif
endfunction
