-- COPY TO SYSTEM CLIPBOARD
-- copy line to system clipboard from normal mode
vim.keymap.set('n', '<leader>yy', '"*yy')
-- copy selection to system clipboard from visual mode
vim.keymap.set('v', '<leader>y', '"*y')
-- copy paragraph to system clipboard from normal mode
vim.keymap.set('n', '<leader>yip', '"*yip')
-- copy paragraph to system clipboard from visual mode
vim.keymap.set('v', '<leader>yp', '"*y')

-- MOVE LINE UP/DOWN
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- KEEP CURSOR IN PLACE WITH J (APPEND LINE BELOW)
vim.keymap.set("n", "J", "mzJ`z")

-- KEEP CURSOR CENTERED WHEN PAGING UP/DOWN
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- KEEP CURSOR CENTERED WHEN SEARCHING
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- KEEP REGISTER AFTER PASTING
vim.keymap.set("x", "p", "\"_dP")

-- OPTION TO DELETE WITHOUT YANKING
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- EQUATE <C-c> TO ESC FOR VISUAL LINE MODE
vim.keymap.set("i", "<C-c>", "<Esc>")


-- SWITCH TMUX SESSIONS (doesn't work with iTerm2 tmux integration)
-- vim.keymap.set("n", "<C-f>",  "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- QUICKFIX WINDOW NAVIGATION
-- go to next/previous quickfix item and center the window
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- go to next/previous location list item and center the window
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- REPLACE WORD UNDER CURSOR
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- QUICK QUIT
vim.keymap.set("n", "Q", ":q<CR>")

-- Move between VIM windows (mac)
vim.keymap.set("n", "˙", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "¬", "<C-w>l", { noremap = true, silent = true })
