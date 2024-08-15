return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "mfussenegger/nvim-dap-python",
            "nvim-neotest/nvim-nio" 
        },
        lazy = true,
        config = function()
            require("dap")
            require("dap-python")
            require("dapui").setup()
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)

            vim.keymap.set("n", "<leader>b", ":DapToggleBreakpoint<CR>")
            vim.keymap.set("n", "<leader>dpr", function() require('dap-python').test_method() end)
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        lazy = true,
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end

            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end

            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end,
    }
}
