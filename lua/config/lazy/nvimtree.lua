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
            },
            renderer = {
                group_empty = false,
            },
            filters = {
                dotfiles = true,
                custom = { ".DS_Store", "__pycache__", ".pytest_cache", ".mypy_cache", ".venv", "node_modules" },
            },
            git = {
                ignore = true,
            },
        })

        -- Toggle nvim-tree with \
        vim.api.nvim_set_keymap("n", "<C-\\>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })

        -- Open nvim-tree and move cursor to the other window
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                require("nvim-tree.api").tree.open()
                vim.cmd("wincmd p")
            end
        })


    end
}
