return  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        local bufferline = require("bufferline").setup{
            options = {
                show_buffer_close_icons = false,
                show_close_icon = false,
                themable = false,
                numbers = "ordinal",
                sort_by = 'id',
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = function()
                            return vim.fn.getcwd():gsub(vim.env.HOME, "~")
                        end,
                        highlight = "Directory",
                        text_align = "left"
                    }
                }
            }
        }

        vim.keymap.set("n", "<leader>b", ":BufferLinePick<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
    end
}

