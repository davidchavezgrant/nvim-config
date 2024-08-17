return  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        local bufferline = require("bufferline").setup{
            options = {
                theme = "gruvbox",
                show_buffer_close_icons = false,
                show_close_icon = false,
                themable = false,
                numbers = "ordinal",
                sort_by = 'id',
                groups = {
                    items = {
                        require('bufferline.groups').builtin.pinned:with({ icon =  "" })
                    }
                }
            }
        }

        -- Close current buffer (ALT-W)
        vim.keymap.set("n", "∑", ":bd<CR>", { noremap = true, silent = true })
        -- Toggle pin (ALT-P)
        vim.keymap.set("n", "π", ":BufferLineTogglePin<CR>", { noremap = true, silent = true })
        -- Next and previous buffer (ALT-h and ALT-l)
        vim.keymap.set("n", "¬", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "˙", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
        -- Move to buffer in position 1-9 (ALT-1 to ALT-9)
        vim.keymap.set("n", "¡", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "™", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "£", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "¢", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "∞", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "§", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "¶", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "•", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "ª", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
    end
}

