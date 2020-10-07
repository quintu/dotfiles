set noshowmode
let g:lightline = {
	    \ 'colorscheme':'nightfly',
	    \ 'active': {
	    \   'left': [ [ 'mode', 'paste' ],
	    \             [ 'readonly', 'filename', 'modified', 'git', 'lsp-status' ] ],
	    \   'right': [ [ 'lineinfo' ],
	    \              [ 'percent' ] ]
	    \ },
	    \ 'component_function': {
	    \   'lsp-status': 'LspStatus',
	    \   'git': 'LightlineFugitive'
	    \ },
	    \ 'component_expand': {
	    \   'buffers': 'lightline#bufferline#buffers',
	    \   'rtabs': 'LightlineTabRight'
	    \ },
	    \ 'component_type': {
	    \   'buffers': 'tabsel',
	    \   'rtabs': 'tabsel'
	    \ },
	    \ 'tabline': {
	    \   'left': [['buffers']],
	    \   'right': [['rtabs']]
	    \ }
	    \ }
function! LightlineTabRight()
    return reverse(lightline#tabs())
endfunction
function! LightlineFugitive()
    if exists('*FugitiveHead')
	let branch = FugitiveHead()
	return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction
let g:lightline#bufferline#show_number = 2
let g:lightline#extensions#tabline#tab_min_count = 2
set showtabline=2
set laststatus=2

nmap <leader>1 <Plug>lightline#bufferline#go(1)
nmap <leader>2 <Plug>lightline#bufferline#go(2)
nmap <leader>3 <Plug>lightline#bufferline#go(3)
nmap <leader>4 <Plug>lightline#bufferline#go(4)
nmap <leader>5 <Plug>lightline#bufferline#go(5)
nmap <leader>6 <Plug>lightline#bufferline#go(6)
nmap <leader>7 <Plug>lightline#bufferline#go(7)
nmap <leader>8 <Plug>lightline#bufferline#go(8)
nmap <leader>9 <Plug>lightline#bufferline#go(9)

"nmap <leader>c1 <Plug>lightline#bufferline#delete(1)
"nmap <leader>c2 <Plug>lightline#bufferline#delete(2)
"nmap <leader>c3 <Plug>lightline#bufferline#delete(3)
"nmap <leader>c4 <Plug>lightline#bufferline#delete(4)
"nmap <leader>c5 <Plug>lightline#bufferline#delete(5)
"nmap <leader>c6 <Plug>lightline#bufferline#delete(6)
"nmap <leader>c7 <Plug>lightline#bufferline#delete(7)
"nmap <leader>c8 <Plug>lightline#bufferline#delete(8)
"nmap <leader>c9 <Plug>lightline#bufferline#delete(9)

" Statusline
function! LspStatus() abort
    if luaeval('#vim.lsp.buf_get_clients() > 0')
	return luaeval("require('lsp-status').status()")
    endif

    return ''
endfunction
