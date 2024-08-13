-- Disable compatibility with vi
vim.opt.compatible = false

-- Tabs / Spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Map Leader To Space
vim.g.mapleader = " "

-- Split Directions
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Relative Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Text wrapping
vim.opt.wrap = false

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colors
vim.opt.termguicolors = true

-- Scrolloff
vim.opt.scrolloff = 10

-- Cursorline 
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true

-- Update time
vim.opt.updatetime = 50

-- Color column
vim.opt.colorcolumn = "100"

-- Disable backup and swap files
-- Allow Undotree to have persistent undo history
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv('HOME') .. '/.config/nvim/undodir'
vim.opt.undofile = true

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Enable filetype plugins
vim.cmd('filetype plugin on')

vim.cmd('set noshowmode')
