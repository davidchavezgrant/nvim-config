local function get_diagnostics_indicator(count, level, diagnostics_dict, context)
    local status = " "
    for error, n in pairs(diagnostics_dict) do
        local sym = error == "error" and " "
        or (error == "warning" and " " or " ")
        status = status .. sym .. '(' .. n .. ')' .. ' '
    end
    return status
end

return  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup{
            options = {
                show_buffer_close_icons = false,
                show_close_icon = false,
                themable = true,
                numbers = "ordinal",
                sort_by = 'id',
                diagnostics = "nvim_lsp",
                diagnostics_indicator = get_diagnostics_indicator,
                groups = {
                    items = {
                        require('bufferline.groups').builtin.pinned:with({ icon =  "" })
                    }
                },
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "📁",
                        highlight = "Directory",
                        text_align = "left"
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

