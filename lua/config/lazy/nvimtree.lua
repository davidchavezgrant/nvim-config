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
                width = 40,
                side = "right",
                number = true,
                relativenumber = true,
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

        -- Open and close directories with <Left> and <Right>
        local function toggle_node()
            local node = api.tree.get_node_under_cursor()
            if node then
                api.node.open.edit()
            end
        end
        vim.keymap.set("n", "<Left>", toggle_node, {})
        vim.keymap.set("n", "<Right>", toggle_node, {})

        -- Open nvim-tree and move cursor to the other window
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                require("nvim-tree.api").tree.open()
                vim.cmd("wincmd p")
            end
        })

        -- Exit Vim if nvim-tree is the only window remaining in the only tab
        vim.api.nvim_create_autocmd("BufEnter", {
            nested = true,
            callback = function()
                if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
                    vim.cmd "quit"
                end
            end
        })
    end
}
