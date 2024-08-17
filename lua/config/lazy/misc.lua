return {
    {
        "nvim-treesitter/nvim-treesitter-context",
    },
    {
        "mhinz/vim-startify"
    },
    {
        "folke/zen-mode.nvim",
        config = function()
            vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", { noremap = true, silent = true })
        end,
    },
    {
        "jiangmiao/auto-pairs"
    },
    {
        "machakann/vim-sandwich"
    },
    {
        "tpope/vim-commentary"
    },
    {
        "tpope/vim-abolish"
    },
    {
        "chaoren/vim-wordmotion"
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            delay = 1000
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
}
