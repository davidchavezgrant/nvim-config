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
                numbers = "both",
                sort_by = 'id',
                diagnostics = "nvim_lsp | coc",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = function()
                            return vim.fn.getcwd():gsub(vim.env.HOME, "~")
                        end,
                        highlight = "Directory",
                        text_align = "left"
                    }
                },
                groups = {
                    items = {
                        require('bufferline.groups').builtin.pinned:with({ icon =  "" })
                    }
                }
            }
        }


        -- Close current buffer
        vim.keymap.set("n", "W", ":bd<CR>", { noremap = true, silent = true })
        -- Toggle pin
        vim.keymap.set("n", "<C-p>", ":BufferLineTogglePin<CR>", { noremap = true, silent = true })
        -- Next and previous buffer
        vim.keymap.set("n", "L", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "H", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
        -- Move to buffer in position 1-9
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

