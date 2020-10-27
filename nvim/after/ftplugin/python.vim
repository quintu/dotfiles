set expandtab
set tabstop=8
set shiftwidth=4

" Run autoformatter when saving buffer
 augroup bufleave
     au!
     au BufWritePre * silent :Autoformat
 augroup END

" function! Autoformat() abort
"     if &buftype ==# ""
"	:Autoformat
"     endif
" endfunction
