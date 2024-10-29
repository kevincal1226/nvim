--return {
--    "0xstepit/flow.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {},
--    config = function()
--        require("flow").setup({
--            transparent = false, -- Set transparent background.
--            fluo_color = "pink", --  Fluo color: pink, yellow, orange, or green.
--            mode = "bright", -- Intensity of the palette: normal, bright, desaturate, or dark. Notice that dark is ugly!
--            aggressive_spell = false, -- Display colors for spell check.
--        })
--
--        vim.cmd("colorscheme flow")
--    end,
--}
return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            compile = false,
            undercurl = true,
            commentStyle = { italic = false },
            functionStyle = {},
            keywordStyle = { italic = false },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,
            dimInactive = false,
            terminalColors = true,
            colors = {
                palette = {
                    wave = {
                        bg = "#1a1c24", -- Darker background color
                    },
                },
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors)
                return {
                    Normal = { bg = colors.palette.wave.bg },
                }
            end,
            theme = "wave", -- Load "wave" theme when 'background' option is not set
            background = {
                dark = "wave",
                light = "wave",
            },
        },
        config = function(_, opts)
            require("kanagawa").setup(opts)
            vim.cmd("colorscheme kanagawa")
        end,
    },
}

-- Your existing LazyVim configuration...

-- ~/.config/nvim/lua/plugins.lua or similar
-- ~/.config/nvim/lua/lazyvim/plugins.lua

-- ~/.config/nvim/lua/lazyvim/plugins.lua

-- ~/.config/nvim/lua/lazyvim/plugins.lua

-- ~/.config/nvim/lua/lazyvim/plugins.lua

--return {
--    -- Other plugins ...
--
--    "kevincal1226/horizon-extended.nvim",
--    lazy = false,
--    priority = 1000,
--    config = function()
--        require("horizon-extended").setup({
--            style = "neo",
--            transparent = false,
--            terminal_colors = true,
--            enable_italics = false,
--            show_end_of_buffer = false,
--            underline = false,
--            undercurl = true,
--            styles = {
--                booleans = { italic = false, bold = false },
--                comments = { italic = false, bold = false },
--                conditionals = { italic = false, bold = false },
--                delimiters = { italic = false, bold = false },
--                functions = { italic = false, bold = false },
--                keywords = { italic = false, bold = false },
--                loops = { italic = false, bold = false },
--                operators = { italic = false, bold = false },
--                properties = { italic = false, bold = false },
--                strings = { italic = false, bold = false },
--                types = { italic = false, bold = false },
--                variables = { italic = false, bold = false },
--            },
--        })
--        vim.cmd("colorscheme horizon-extended")
--    end,
--}
