return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                side = "right",
                number = true,
                relativenumber = true,
                width = {
                    min = 40,
                    max = 80,
                }
            },
            renderer = {
                group_empty = true,
                highlight_git = "all",
                highlight_opened_files = "all",
            },
            filters = {
                dotfiles = true,
                custom = { ".DS_Store", "__pycache__", ".pytest_cache", ".mypy_cache", "node_modules" },
            },
            git = {
                ignore = true,
            },
            update_focused_file = {
                enable = true,
                update_root = {
                    enable = true,
                }
            },
            hijack_cursor = true,
            disable_netrw = true,
            sync_root_with_cwd = true,

        })
        local api = require("nvim-tree.api")

        -- Toggle nvim-tree with \ or close it if it's focused
        local function toggle_or_focus()
            local is_visible = api.tree.is_visible()
            local is_focused = api.tree.is_tree_buf()

            if is_visible and is_focused then
                api.tree.close()
            else
                api.tree.open()
            end
        end


        vim.keymap.set("n", "<C-\\>", toggle_or_focus, { noremap = true, silent = true })


        -- Open nvim-tree and move cursor to the other window
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                require("nvim-tree.api").tree.open()
                vim.cmd("wincmd p")
            end
        })

        -- Exit Vim if nvim-tree is the only window remaining in the only tab
        -- NEED TO IMPLEMENT
    end
}
