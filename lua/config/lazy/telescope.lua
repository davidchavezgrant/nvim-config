return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()

        local builtin = require('telescope.builtin')
        -- find files
        vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
        -- find buffer
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        -- find live
        vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
        -- find word
        vim.keymap.set('n', '<leader>fw', function()
            builtin.grep_string({search = vim.fn.input("Grep > ")})
        end)
    end
}
    
