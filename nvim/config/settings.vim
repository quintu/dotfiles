if exists('b:settings_loaded')
  finish
endif

let b:settings_loaded = 1

set hidden
set filetype
set ignorecase
set smartcase
set autoindent
set breakindent
set number
"set relativenumber
set autoread
set autowrite

autocmd BufReadPre,FileReadPre,WinEnter,FocusGained * :setlocal number relativenumber
autocmd WinLeave,FocusLost   * :setlocal number norelativenumber

filetype plugin indent on

syntax enable

set signcolumn=yes
let g:mapleader = ','
set updatetime=1000
set completeopt=menuone,preview,noinsert,noselect
set colorcolumn=80
set scrolloff=2
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source $MYVIMRC
augroup END
let g:tmux_navigator_save_on_switch = 1
""""""""""""""""""""""""" Colors
set termguicolors
"let g:base16_shell_path=base16-builder/output/shell
"if filereadable(expand("~/.vimrc_background"))
"  let base16colorspace=256
"  source ~/.vimrc_background
"endif
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_underline=1
colorscheme gruvbox


"augroup colors
"	au!
"	au vimenter * nested colorscheme gruvbox
"augroup END
