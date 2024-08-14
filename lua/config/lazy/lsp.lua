return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },
    config = function()
        vim.api.nvim_create_autocmd('LspAttach', {
          group = vim.api.nvim_create_augroup('user_lsp_attach', {clear = true}),
          callback = function(event)
            local opts = {buffer = event.buf}
            vim.keymap.set('n', '<C-n>', function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set('n', '<C-p>', function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set('n', '<leader><leader>', function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set('n', '<leader><CR>', function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set('n', '<leader>fs', function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set('n', '<leader>gd', function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set('n', '<leader>fr', function() vim.lsp.buf.references() end, opts)
            vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set('n', '<leader>fm', function() vim.lsp.buf.format() end, opts)
          end,
        })
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('mason').setup({})
        require('mason-lspconfig').setup({
          ensure_installed = {'tsserver', 'rust_analyzer', 'omnisharp', 'pylsp', 'pyright', 'ruff', 'lua_ls', 'dockerls', 'docker_compose_language_service', 'eslint'},
          handlers = {
            function(server_name)
              require('lspconfig')[server_name].setup({
                capabilities = lsp_capabilities,
              })
            end,
            lua_ls = function()
              require('lspconfig').lua_ls.setup({
                capabilities = lsp_capabilities,
                settings = {
                  Lua = {
                    runtime = {
                      version = 'LuaJIT'
                    },
                    diagnostics = {
                      globals = {'vim'},
                    },
                    workspace = {
                      library = {
                        vim.env.VIMRUNTIME,
                      }
                    }
                  }
                }
              })
            end,
            pyright = function()
                require('lspconfig').pyright.setup({
                    capabilities = lsp_capabilities,
                    settings = {
                        python = {
                            analysis = {
                                autoSearchPaths = true,
                                useLibraryCodeForTypes = true,
                            },
                            lineLength = 88,
                        },
                    },
                })
            end,
        }
    })
        local cmp = require('cmp')
        local cmp_select = {behavior = cmp.SelectBehavior.Select}
        -- this is the function that loads the extra snippets to luasnip
        -- from rafamadriz/friendly-snippets
        require('luasnip.loaders.from_vscode').lazy_load()
        cmp.setup({
          sources = {
            {name = 'path'},
            {name = 'nvim_lsp'},
            {name = 'luasnip', keyword_length = 2},
            {name = 'buffer', keyword_length = 3},
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            ['<C-Space>'] = cmp.mapping.complete(),
          }),
          snippet = {
            expand = function(args)
              require('luasnip').lsp_expand(args.body)
            end,
          },
        })
    end
}
