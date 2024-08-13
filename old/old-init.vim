set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tomasiser/vim-code-dark'
call plug#end()

syntax enable
set background=dark
set t_Co=256
set t_ut=
colorscheme gruvbox
