local function get_diagnostics_indicator(_, _, diagnostics, _)
    if diagnostics.error and diagnostics.error > 0 then
        return "   (" .. diagnostics.error .. ")"
    elseif diagnostics.warning and diagnostics.warning > 0 then
        return "   (" .. diagnostics.warning .. ')'
    elseif diagnostics.info and diagnostics.info > 0 then
        return "   (" .. diagnostics.info .. ')'
    elseif diagnostics.hint and diagnostics.hint > 0 then
        return "  (" .. diagnostics.hint .. ')'
    else
        return ""
    end
end

return  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup{
            options = {
                sort_by = 'id',
                themable = true,
                numbers = "ordinal",
                show_close_icon = false,
                diagnostics = "nvim_lsp",
                separator_style = "slant",
                show_buffer_close_icons = false,
                diagnostics_indicator = get_diagnostics_indicator,
                name_formatter = function(buf)
                    return " " .. buf.name
                end,
                groups = {
                    items = {
                        require('bufferline.groups').builtin.pinned:with({ icon =  "  " })
                    }
                },
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "📁",
                        highlight = "Directory",
                        text_align = "left"
                    },
                    {
                        filetype="undotree",
                        text="Undo History",
                        highlight = "Directory",
                        text_align = "left"
                    }
                },
            },
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

