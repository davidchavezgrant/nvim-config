set nocompatible
syntax enable
filetype plugin on

" TABS / SPACES
:set tabstop=4
:set shiftwidth=4
:set expandtab

" FINDING FILES
" Recurse directories
set path+=**
set wildmenu
" Except this these because I'd like to finish my search this century
set wildignore+=**/node_modules/**
set wildignore+=**/.next/**
set wildignore+=**/.git/**
set wildignore+=**/.idea/**
set wildignore+=**/.vscode/**

" FIND BY TAGS command! MakeTags !ctags --map-TypeScript=+'(*.tsx)' --exclude=node_modules --exclude=package-lock.json --exclude=.next -R .
set tags=./tags,tags;$HOME

" FILE BROWSING
let g:netrw_banner=0       "disable banner
let g:netrw_liststyle=3    "tree view
let g:netrw_altv=1         "open file in right side split
let g:netrw_winsize=75     "size of split
let g:netrw_browse_split=2 "open in vertical split by default

" SNIPPETS
nnoremap ,edfunc :-1read $HOME/.config/nvim/templates/edfunc.js<CR>3wi
nnoremap ,edfunc :-1read $HOME/.config/nvim/templates/edfunc.js<CR>3wi
nnoremap ,func :-1read $HOME/.config/nvim/templates/func.js<CR>wi

