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
                group_empty = true,
            },
            filters = {
                dotfiles = false,
                custom = { ".git", ".DS_Store", ".idea", ".vscode", ".cache", "__pycache__", ".pytest_cache", ".mypy_cache", ".venv", "node_modules" },
            },
            git = {
                ignore = false,
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

        -- Start nvim-tree when Vim is started without file arguments
        local function open_nvim_tree(data)
            local directory = vim.fn.isdirectory(data.file) == 1

            if not directory then
                return
            end

            -- Change to the directory
            vim.cmd.cd(data.file)

            -- Open the tree
            require("nvim-tree.api").tree.open()
        end

        vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

    end
}
