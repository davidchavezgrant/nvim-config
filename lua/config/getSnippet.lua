-- Load snippet files dynamically based on file type
function load_snippet(snippet_type)
    local ext = vim.fn.expand("%:e")
    local template_dir = os.getenv("HOME") .. "/.config/nvim/templates/"
    local template_file = template_dir .. snippet_type .. "." .. ext

    if vim.fn.filereadable(template_file) == 0 then
        print("No template found for " .. snippet_type .. " in ." .. ext)
        return
    end

    -- Read the template file into the buffer
    vim.cmd('read ' .. template_file)

    -- Move cursor and enter insert mode
    vim.cmd.normal('w')
    vim.cmd('startinsert') 
    
end


vim.api.nvim_set_keymap('n', '<leader>class', ':lua load_snippet("class")<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>func', ':lua load_snippet("function")<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '<leader>test', ':lua load_snippet("unittest")<CR>', { noremap = true})

