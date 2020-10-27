let g:python3_host_prog="$HOME/.config/nvim/env/bin/python"
"let g:formatdef_yapf='"
let b:formatters_python = ['yapf']
let g:tmux_navigator_save_on_switch = 1
let g:mapleader = ';'
set hidden
set filetype
set ignorecase
set smartcase
set autoindent
set breakindent
set number
set autoread
set autowrite
set signcolumn=yes
set updatetime=1000
set completeopt=menuone,preview,noinsert,noselect
set shiftwidth=4
"set colorcolumn=80
set scrolloff=3
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldnestmax=3

filetype plugin indent on
syntax enable

let g:UltiSnipsExpandTrigger="<leader>s"
let g:UltiSnipsJumpForwardTrigger="<leader>j"
let g:UltiSnipsJumpBackwardTrigger="<leader>k"

"Set custom syntax highlighting for certain filetypes
augroup syntax_highlighting
    au!
    au BufWinEnter,BufRead,BufNewFile *.envrc set filetype=bash
augroup END

"Enter insert mode in when entering terminal buffer
"Leave insert mode when leaving terminal buffer
augroup bufterm
    au!
    au BufWinEnter,WinEnter term://* startinsert
    "au BufLeave term://* stopinsert
augroup END

" Save file when leaving buffer
augroup bufleave
    au!
    " au BufWritePre * silent :Autoformat()
    au BufLeave * update
augroup END


"Show relative number in active buffer
"Show absolute numbers in inactive buffers
augroup numbers
    au!
    au BufReadPre,FileReadPre,WinEnter,FocusGained * :setlocal number relativenumber
    au WinLeave,FocusLost * :setlocal number norelativenumber
augroup END


"Source vimrc after saving any .vim file
augroup vimrcsave
    au!
    au BufWritePost .vim :source $MYVIMRC
augroup END


" function! Autoformat() abort
"     if &buftype ==# ""
"	:Autoformat
"     endif
" endfunction

