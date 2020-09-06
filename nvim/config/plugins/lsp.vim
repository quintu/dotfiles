" if exists('b:lsp_config_loaded')
"   finish
" endif
" 
" let b:lsp_config_loaded = 1
" 

augroup LSPConfig
  autocmd Filetype * setlocal omnifunc=v:lua.vim.lsp.omnifunc
augroup END
