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
    {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    },
  },
}
}
