""""""""""""""""""""""""""""""""" Normal Mappings
" Treesitter Mappings
" tr: treesitter reload.
nnoremap <leader>tr :write <bar> edit <bar> TSBufEnable highlight <CR>

" Vim Mappings
" bd: buffer delete. Delete buffer, open previous buffer
nnoremap <leader>bd :bp<bar>bd #<CR>
" vr: vim reload (init). Reload $MYVIMRC
nnoremap <leader>vr :so $MYVIMRC<CR>
" vi: vim (plug) install. :PlugInstall
nnoremap <leader>vi :so $MYVIMRC <bar> PlugInstall <CR>
" vc: vim (plug) clean. :PlugClean
nnoremap <leader>vc :so $MYVIMRC <bar> PlugClean <CR>
" vu: vim (plug) update. :PlugUpdate
nnoremap <leader>vu :so $MYVIMRC <bar> PlugUpdate<CR>
" <esc><esc>: clear highlighting
nnoremap <silent> <esc><esc> :noh<CR>

" LSP mappings
" lr: lsp rename.
nnoremap <leader>lr :lua vim.lsp.buf.rename() <CR>

""""""""""""""""""""""""""""""""" Terminal Mappings
"leave insert mode with esc
tmap <esc> <c-\><c-n>

