""""""""""""""""""""""""""""""""Vim Plug Plugins"""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
"Color schemes"
Plug 'flazz/vim-colorschemes'
Plug 'gruvbox-community/gruvbox'
Plug 'tomasiser/vim-code-dark'

"Completion plugin"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Telescope Fuzzy Search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'BurntSushi/ripgrep'

"Omnisharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'nickspoons/vim-sharpenup'
Plug 'jlcrochet/vim-razor'

"Syntax Checking"
Plug 'https://github.com/vim-syntastic/syntastic.git'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'

"GitHub Copilot
Plug 'github/copilot.vim'

" Async linting for realtime syntax checking
Plug 'dense-analysis/ale'

"Start Screen"
Plug 'mhinz/vim-startify'

"Debugging system
Plug 'puremourning/vimspector'

"Statusline"
Plug 'itchyny/lightline.vim'

"Nerdtree File Manager"
Plug 'preservim/nerdtree'

"Syntax highlighting and icons for nerdtree"
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

"Make all text center"
Plug 'junegunn/goyo.vim'

" Highlight only current paragraph
Plug 'junegunn/limelight.vim'

"Preview Css colors in files"
Plug 'https://github.com/ap/vim-css-color.git'

Plug 'preservim/nerdcommenter'

"Markdown live preview"
Plug 'iamcco/markdown-preview.vim'

"Vim copy from system clipboard"
Plug 'christoomey/vim-system-copy'

"Surround text with quotes, parentheses, brackets, tags, etc"
Plug 'https://github.com/tpope/vim-surround.git'

"Align text based on symbols"
Plug 'https://github.com/godlygeek/tabular.git'

"Search and open previous Files"
Plug 'https://github.com/yegappan/mru.git'

"A menu that helps learn the leader keybindings"
Plug 'liuchengxu/vim-which-key'

"Rainbow Brackets"
Plug 'https://github.com/frazrepo/vim-rainbow.git'

"Code snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Vim Wiki
Plug 'vimwiki/vimwiki'

" Improved tab completion
Plug 'ervandew/supertab'

"Highlight matching tags
Plug 'valloric/MatchTagAlways'

" Automatically type matching braces, parens, quotes, etc
Plug 'jiangmiao/auto-pairs'

call plug#end()

let g:node_host_prog='/usr/local/bin/node'

scriptencoding utf-8
let g:tmuxline_powerline_separators = 0

" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:60%'

" Read gitignore and dont show relevant files in ctrlp.
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Use Ag over Grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
