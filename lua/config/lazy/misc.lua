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
}
