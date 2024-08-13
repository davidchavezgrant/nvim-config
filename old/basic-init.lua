-- Load functions
require('getSnippet')

-- Disable compatibility with vi
vim.opt.compatible = false

-- Tabs / Spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Split Directions
--vim.opt.splitright = true
vim.opt.splitbelow = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Enable filetype plugins
vim.cmd('filetype plugin on')

-- FINDING FILES
-- Recurse directories
vim.opt.path:append('**')
vim.opt.wildmenu = true

-- Wildignore patterns for faster file search
vim.opt.wildignore:append({
    '**/node_modules/**',
    '**/.next/**',
    '**/.git/**',
    '**/.idea/**',
    '**/.vscode/**'
})


-- FIND BY TAGS
-- Include *.tsx files, exclude node_modules and .next folder
vim.cmd('command! MakeTags !ctags --map-TypeScript=+\'(*.tsx)\' --exclude=node_modules --exclude=package-lock.json --exclude=.next -R .')
vim.opt.tags:append('./tags,tags;$HOME')

-- FILE BROWSING
vim.g.netrw_banner = 0       -- disable banner
vim.g.netrw_liststyle = 3    -- tree view
vim.g.netrw_altv = 0         -- open file in right side split
vim.g.netrw_winsize = 75     -- size of split
vim.g.netrw_browse_split = 4 -- open in vertical split by default

-- SNIPPETS
vim.api.nvim_set_keymap('n', ',edfunc', ':-1read $HOME/.config/nvim/templates/edfunc.js<CR>3wi', { noremap = true, silent = true })

-- CUSTOM COMMANDS
-- Reload
vim.cmd('command! Reload :luafile ~/.config/nvim/init.lua<CR>')
