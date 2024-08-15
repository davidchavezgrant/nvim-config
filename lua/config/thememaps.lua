local theme_map = {
    ["*.py"] = "UseMonokai",
    ["*.lua"] = "UseBlueMoon",
    ["*.js"] = "UseNeon",
}

for pattern, theme_function_name in pairs(theme_map) do
    vim.api.nvim_create_autocmd("BufEnter", {
        pattern = pattern,
        callback = function()
            if vim.bo.filetype ~= "NvimTree" then
                _G[theme_function_name]()
            end
        end,
    })

    vim.api.nvim_create_autocmd("BufWinLeave", {
        pattern = pattern,
        callback = function()
            if vim.bo.filetype ~= "NvimTree" then
                UseTheme()
            end
        end,
    })
end

