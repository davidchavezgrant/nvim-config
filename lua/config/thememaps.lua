local theme_map = {
    ["*.py"] = "UseMonokai",
    ["*.lua"] = "UseBlueMoon",
    ["*.js"] = "UseDracula",
    ["*.cs"] = "UseRiderDark",
    ["*.ts"] = "UseVscode",
    ["*.tsx"] = "UseVscode",
    ["*.txt"] = "UseZenbones",
    ["*.json"] = "UseCarbon",
    ["*.yaml"] = "UseCarbon",
    ["*.yml"] = "UseCarbon"
}

for pattern, theme_function_name in pairs(theme_map) do
    vim.api.nvim_create_autocmd("BufEnter", {
        pattern = pattern,
        callback = function()
            if vim.bo.filetype ~= "NvimTree" then
                local status, err = pcall(function() _G[theme_function_name]() end)
                if not status then
                    vim.notify("Error applying theme: " .. err, vim.log.levels.ERROR)
                end
            end
        end,
    })

    vim.api.nvim_create_autocmd("BufWinLeave", {
        pattern = pattern,
        callback = function()
            if vim.bo.filetype ~= "NvimTree" then
                local status, err = pcall(UseTheme)
                if not status then
                    vim.notify("Error resetting theme: " .. err, vim.log.levels.ERROR)
                end
            end
        end,
    })
end

