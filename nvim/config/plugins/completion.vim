augroup completion
	au!
	au BufEnter * lua require'completion'.on_attach()
"	au inoremap <silent><expr> <c-p> completion#trigger_completion()
augroup END

set completeopt-=preview
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
