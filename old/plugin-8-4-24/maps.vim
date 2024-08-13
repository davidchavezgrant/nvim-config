let mapleader = " "
map <Leader>z :Goyo<CR>
map <Leader>ll :Limelight!!<CR>
map <Leader>n :tabnew file<CR>
map <Leader>h :WhichKey '<Space>'<CR>
map <Leader>re :MRU<CR>
nnoremap <Leader>r :source $MYVIMRC<CR>
" Find files using Telescope command-line sugar.
nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"collapse json files when opened.
map <C-j> :set filetype=json \| :syntax on \| :set foldmethod=syntax

"Keybindings for sane buffer navigation"
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-LEFT> <C-w>h
map <C-DOWN> <C-w>j
map <C-UP> <C-w>k
map <C-RIGHT> <C-w>l

map <s-LEFT> :vertical resize +5 <Cr>
map <s-RIGHT> :vertical resize -5 <Cr>
map <s-UP> :resize +5 <Cr>
map <s-DOWN> :resize -5 <Cr>

nnoremap <M-Left> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>
"Keybindings for tab navigation with leader and number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

noremap <leader>0 :tablast<cr>
nnoremap <leader>x :tabclose<Cr>
map <leader>tm :tabmove<Cr>

map <leader>c :Colors<Cr>
map <leader>b :Buffers<Cr>
map <leader>s :Files<Cr>
map <leader>W :Windows<Cr>
map <leader>H :History<Cr>
map <leader>Hc :History:<Cr>
map <leader>M :Maps<Cr>


