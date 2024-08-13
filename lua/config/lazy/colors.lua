function SetAccents()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#002030" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", {fg = "#34B5B3", bg = "none"})
    vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ebdbb2", bg = "none"})
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = 'NONE' })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#002030" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ebdbb2", bg = "#002030" })
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE", ctermbg = "NONE" })

end

function UseTheme(color)
	color = color or "vscode"
	vim.cmd.colorscheme(color)
    SetAccents()
end

function UseRiderDark()
    vim.cmd.colorscheme("riderdark")
    SetAccents()
end

function UseTokyoNight()
    vim.cmd.colorscheme("tokyonight")
    SetAccents()
end

function UseGruvbox()
    vim.cmd.colorscheme("gruvbox")
    SetAccents()
end

function UseRosePine()
    vim.cmd.colorscheme("rose-pine")
    SetAccents()
end

function UseSonokai()
    vim.cmd.colorscheme("sonokai")
    SetAccents()
end

function UseGithub()
    vim.cmd.colorscheme("github")
    SetAccents()
end

function UseFlow()
    vim.cmd.colorscheme("flow")
    SetAccents()
end

function UseVscode()
    vim.cmd.colorscheme("vscode")
    SetAccents()
end

function UseDracula()
    vim.cmd.colorscheme("dracula") 
    SetAccents()
end

function UseMonokai()
    vim.cmd.colorscheme("monokai")
    SetAccents()
end

function UseOnedark()
    vim.cmd.colorscheme("onedark")
    SetAccents()
end

function UseCyberdream()
    vim.cmd.colorscheme("cyberdream")
    SetAccents()
end

function UsePoimandres()
    vim.cmd.colorscheme("poimandres")
    SetAccents()
end

function UseMoonlight()
    vim.cmd.colorscheme("moonlight")
    SetAccents()
end


return {

    {
        "erikbackman/brightburn.vim",
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                undercurl = true,
                underline = true,
                bold = false,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = false, -- invert background for search, diffs, statuslines and errors
                contrast = "soft", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = true,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })
        end
    },
    {
        "sainnhe/sonokai",
        name = "sonokai",
        config = function()
            vim.g.sonokai_style = "andromeda"
            vim.g.sonokai_enable_italic = 1
            vim.g.sonokai_disable_italic_comment = 1
        end
    },
    {
        "projekt0n/github-nvim-theme",
        name = "github",
    },
    {
        "0xstepit/flow.nvim",
        name = "flow"
    },
    {
        "davidchavezgrant/vscode.nvim",
        name = "vscode",
    },
    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
    },
    {
        "tanvirtin/monokai.nvim",
        name = "monokai",
    },
    {
        "navarasu/onedark.nvim",
        name = "onedark",
    },
    {
        "scottmckendry/cyberdream.nvim",
        name = "cyberdream",
    },
    {
        "olivercederborg/poimandres.nvim",
        name = "poimandres",
    },
    {
        "shaunsingh/moonlight.nvim",
        name = "moonlight",
    },
    {
        "realbucksavage/riderdark.vim",
        name = "riderdark",
    }

}
