local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then options = vim.tbl_extend("force", options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- 1. Bold, Italic, Underline
-- map("n", "<C-b>", "ciw**<C-r>\"**<Esc>", {desc = "Bold word under cursor"})
-- map("v", "<C-b>", "c**<C-r>\"**<Esc>", {desc = "Bold selection"})
-- map("n", "<C-i>", "ciw*<C-r>\"*<Esc>", {desc = "Italicize word under cursor"})
-- map("v", "<C-i>", "c*<C-r>\"*<Esc>", {desc = "Italicize selection"})
-- map("n", "<C-u>", "ciw<u><C-r>\"</u><Esc>", {desc = "Underline word under cursor"})
-- map("v", "<C-u>", "c<u><C-r>\"</u><Esc>", {desc = "Underline selection"})

-- 2. Headers
for i = 1, 6 do
    local header = string.rep("#", i)
    map("n", "<leader>h" .. i, "ciw" .. header .. " <C-r>\"<Esc>", {desc = "H" .. i .. " for word under cursor"})
    map("v", "<leader>h" .. i, "c" .. header .. " <C-r>\"<Esc>", {desc = "H" .. i .. " for selection"})
end

-- 3. Code blocks
map("n", "<leader>`", "o```<CR>```<Esc>O", {desc = "Create and enter code block"})
map("v", "<leader>`", "c```<CR><C-r>\"<CR>```<Esc>", {desc = "Surround selection with code block"})

-- 4. List items
map("n", "<leader>-", "I- <Esc>", {desc = "Create list item for row"})
map("v", "<leader>-", "I- <Esc>", {desc = "Create list item for selected rows"})

-- 5. Checkboxes
map("n", "<leader>[]", "I- [ ] <Esc>", {desc = "Create checkbox for row"})
map("v", "<leader>[]", "I- [ ] <Esc>", {desc = "Create checkbox for selected rows"})
