-- Open and close directories with <left> and <right>
local api = require("nvim-tree.api")
local function toggle_node()
    local node = api.tree.get_node_under_cursor()
    if node then
        api.node.open.edit()
    end
end
vim.keymap.set("n", "<Left>", toggle_node, {buffer = 0})
vim.keymap.set("n", "<Right>", toggle_node, {buffer = 0})
vim.keymap.set("n", "h", toggle_node, {buffer = 0})
vim.keymap.set("n", "l", toggle_node, {buffer = 0})
