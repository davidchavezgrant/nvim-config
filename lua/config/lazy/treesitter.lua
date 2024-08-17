return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require'nvim-treesitter.configs'.setup {
          -- A list of parser names, or "all" (the listed parsers MUST always be installed)
          ensure_installed = {
          "bash", "c", "c_sharp", "clojure", "css", "csv", "dart", "dockerfile",
          "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
          "go", "html", "http", "java", "javascript", "jsdoc", "json", "lua",
          "markdown", "markdown_inline", "nginx", "php", "phpdoc", "python",
          "query", "regex", "ruby", "rust", "scala", "sql", "swift", "tmux",
          "typescript", "vim", "vimdoc", "xml", "yaml"
        },
          -- Install parsers synchronously (only applied to `ensure_installed`)
          sync_install = false,
          -- Automatically install missing parsers when entering buffer
          -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
          auto_install = true,
          highlight = {
            enable = true,
            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false,
          },
        }
    end
}
