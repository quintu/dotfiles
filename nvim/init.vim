call plug#begin()
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'itchyny/lightline.vim'
Plug 'jlanzarotta/bufexplorer'

Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'nvim-treesitter/nvim-treesitter'


Plug 'ptzz/lf.vim'
" Plug 'haorenW1025/floatLf-nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jpalardy/vim-slime'
Plug 'rhysd/clever-f.vim'
Plug 'dense-analysis/ale'

Plug 'tpope/vim-obsession'
Plug 'tpope/vim-eunuch'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

lua require('lsp')
lua require('treesitter')
"lua require('iron')
"luafile $HOME/.config/nvim/plugins.lua
source $HOME/.config/nvim/config/settings.vim
source $HOME/.config/nvim/config/mappings.vim
source $HOME/.config/nvim/config/colors.vim

source $HOME/.config/nvim/config/plugins/completion.vim
source $HOME/.config/nvim/config/plugins/diagnostic.vim
source $HOME/.config/nvim/config/plugins/lightline.vim
source $HOME/.config/nvim/config/plugins/lf.vim
source $HOME/.config/nvim/config/plugins/lsp.vim
source $HOME/.config/nvim/config/plugins/tmux-navigator.vim
source $HOME/.config/nvim/config/plugins/vim-slime.vim
" source $HOME/.config/nvim/config/plugins/simpylfold.vim
" Available keys for remapping:
" C-Q
" C-S
" C-@
" C-H
" C-J

