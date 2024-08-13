set encoding=utf-8
set tabstop=4 softtabstop=4
set shiftwidth=4
set scrolloff=10
set colorcolumn=80
set signcolumn=yes
set clipboard+=unnamedplus
set expandtab
set smartindent
set exrc
set nu
set ignorecase
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set incsearch
set number
set relativenumber
set noshowmode
set cursorcolumn
set cursorline

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
set noshowmatch

"don't autoselect first item in omnicomplete, show if only one item (for preview)
"remove preview if you don't want to see any documentation whatsoever.
set completeopt=longest,menuone,preview
"set completeopt-=preview

" Fetch full documentation during omnicomplete requests.
" There is a performance penalty with this (especially on Mono)
" By default, only Type/Method signatures are fetched. Full documentation can still be fetched when
" you need it with the :OmniSharpDocumentation command.
" let g:omnicomplete_fetch_full_documentation=1

"Move the preview window (code documentation) to the bottom of the screen, so it doesn't move the code!
"You might also want to look at the echodoc plugin
set splitbelow

" this setting controls how long to wait (in ms) before fetching type / symbol information.
set updatetime=500
" Remove 'Press Enter to continue' message when type information is longer than one line.
set cmdheight=2
