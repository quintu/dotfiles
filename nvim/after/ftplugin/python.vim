set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

let b:ale_linters = ['pylint', 'mypy']
let b:ale_fixers = ['yapf']
" Run autoformatter when saving buffer
 " augroup bufleave
 "     au!
 "     au BufWritePre * silent :Autoformat
 " augroup END

" function! Autoformat() abort
"     if &buftype ==# ""
"	:Autoformat
"     endif
" endfunction
