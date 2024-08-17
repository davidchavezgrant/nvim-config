function SetTransparentBg()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#002030" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", {fg = "#34B5B3", bg = "none"})
    vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ebdbb2", bg = "none"})
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = 'NONE' })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#f92672", bg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE", ctermbg = "NONE" })
end

function UseTheme(color)
    vim.cmd.colorscheme("default")
    if color then
        vim.cmd.colorscheme(color)
    else
        UseVscode()
    end
end

---------------------------------------------------
-- ZENBONES
---------------------------------------------------
function UseZenbones()
    UseTheme("zenbones")
end

function UseZenMono()
    UseTheme("zenwritten")
end

function UseZenNeo()
    UseTheme("neobones")
end

function UseZenRose()
    UseTheme("rosebones")
end

function UseZenTokyo()
    UseTheme("tokyobones")
end

function UseZenDuck()
    UseTheme("duckbones")
end

function UseZenKanagawa()
    UseTheme("kanagawabones")
end

function UseZenForest()
    UseTheme("forestbones")
end

function UseZenBurned()
    UseTheme("zenburned")
end

function UseZenSeoul()
    UseTheme("seoulbones")
end

function UseZenNord()
    UseTheme("nordbones")
end

---------------------------------------------------
-- NEON
---------------------------------------------------
local function useNeon(theme)
    local fm = require 'fluoromachine'
    fm.setup {
        glow = true,
        theme = theme,
        transparent = false,
    }
    vim.cmd.colorscheme 'fluoromachine'
    UseTheme("fluoromachine")
end

function UseNeonRetrowave()
    useNeon("retrowave")
end

function UseNeonDelta()
    useNeon("delta")
end

function UseNeon()
    useNeon("fluoromachine")
end

---------------------------------------------------
-- GITHUB
---------------------------------------------------
function UseGithub()
    UseTheme("github_dark")
end

function UseGithubDefault()
    UseTheme("github_dark_default")
end

function UseGithubDimmed()
    UseTheme("github_dark_dimmed")
end

function UseGithubHighContrast()
    UseTheme("github_dark_high_contrast")
end

---------------------------------------------------
-- MINIMAL
---------------------------------------------------
function UseMonoDarkVoid()
    UseTheme("darkvoid")
end

function UseMonochrome()
    UseTheme("monochrome")
end

---------------------------------------------------
--- OTHERS
---------------------------------------------------
function UseBlueMoon()
    UseTheme("blue-moon")
end

function UseCarbon()
    UseTheme("oxocarbon")
end

function UseDarcula()
    UseTheme("darcula-dark")
end

function UseDarkFlat()
    UseTheme("dark_flat")
end

function UseDracula()
    UseTheme("dracula")
end

function UseMiasma()
    UseTheme("miasma")
end

function UseMonokai()
    UseTheme("monokai")
end

function UseMoonlight()
    UseTheme("moonlight")
end

function UseNoClownFiesta()
    UseTheme("no-clown-fiesta")
end

function UsePoimandres()
    UseTheme("poimandres")
end

function UseRiderDark()
    UseTheme("riderdark")
end

function UseRosePine()
    UseTheme("rose-pine")
end

function UseVimDefault()
    vim.cmd.colorscheme("default")
end

function UseVscode()
    UseTheme("vscode")
    SetTransparentBg()
    --vim.api.nvim_set_hl(0, "Normal", { bg = "#000014" })
end
return {
    {
        "kyazdani42/blue-moon",
        name = "blue-moon",
        lazy = false,
    },
    {
        "xiantang/darcula-dark.nvim",
        name = "darcula",
        lazy = false,
    },
    {
        'aliqyan-21/darkvoid.nvim',
        name = 'darkvoid',
        lazy = false 
    },
    {
        "sekke276/dark_flat.nvim",
        name = "dark_flat",
        lazy = false 
    },
    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
        lazy = false
    },
    {
        "maxmx03/fluoromachine.nvim",
        name = "fluoromachine",
        lazy = true,
        config = function ()
            local fm = require 'fluoromachine'

            fm.setup {
                glow = true,
                theme = 'delta',
                transparent = false,
            }

            vim.cmd.colorscheme 'fluoromachine'
        end
    },
    { 
        'projekt0n/github-nvim-theme',
        name = 'github',
        lazy = false
    },
    {
        "xero/miasma.nvim",
        name = "miasma",
        lazy = false
    },
    {
        "kdheepak/monochrome.nvim",
        name = "monochrome",
        lazy = false
    },
    {
        "tanvirtin/monokai.nvim",
        name = "monokai",
        lazy = false,
        ft = "python",
        config = function()
            require('monokai').setup()
            UseMonokai()
        end
    },
    {
        "shaunsingh/moonlight.nvim",
        name = "moonlight",
        lazy = false
    },
    {
        "aktersnurra/no-clown-fiesta.nvim",
        name = "no-clown-fiesta",
        lazy = false
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        name = "oxocarbon",
        lazy = false
    },
    {
        'olivercederborg/poimandres.nvim',
        name = 'poimandres',
        lazy = false
    },
    {
        "realbucksavage/riderdark.vim",
        name = "riderdark",
        lazy = false
    },
    {
        "davidchavezgrant/vscode.nvim",
        name = "vscode",
        lazy = false,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        config = function()
            require('rose-pine').setup({
                disable_background = false,
                transparent_background = true,
            })
        end
    },
    {
        "zenbones-theme/zenbones.nvim",
        name = "zenbones",
        lazy = false,
        dependencies = {
            "rktjmp/lush.nvim"
        }
    },
}
