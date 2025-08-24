-- return {
--     "saghen/blink.cmp",
--     opts = {
--         -- keymap = { preset = "super-tab" },
--         -- other configurations...
--     },
-- }

-- ~/.config/nvim/lua/plugins/blink.lua
return {
    "saghen/blink.cmp",
    opts = {
        keymap = {
            preset = "default",
            -- Override Tab behavior
            ["<Tab>"] = { "accept", "fallback" },
        },
    },
}
