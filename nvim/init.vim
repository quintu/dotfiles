call plug#begin()
"Plug 'chriskempson/base16-vim'

Plug 'morhetz/gruvbox' 
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-treesitter/nvim-treesitter'


Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'
"Plug 'voldikss/vim-floaterm'
"Plug 'vimwiki/vimwiki'


"Save vim sessions
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-eunuch'
"Syntax highlighting, etc.
"Plug 'tmux-plugins/vim-tmux'
"Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

lua require('lsp')
lua require('treesitter')

source $HOME/.config/nvim/config/settings.vim
source $HOME/.config/nvim/config/mappings.vim


source $HOME/.config/nvim/config/plugins/lsp.vim
source $HOME/.config/nvim/config/plugins/completion.vim
source $HOME/.config/nvim/config/plugins/diagnostic.vim
source $HOME/.config/nvim/config/plugins/lightline.vim
source $HOME/.config/nvim/config/plugins/lf.vim
" Available keys for remapping:
" C-Q
" C-S
" C-@
" C-H
" C-J
" C-K
" C-
