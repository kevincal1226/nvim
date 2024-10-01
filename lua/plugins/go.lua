return {
    -- Go language server
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.gopls.setup({
                on_attach = function(client, bufnr)
                    -- Keybindings and other on_attach configurations
                end,
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
            })
        end,
    },

    -- Autocompletion setup
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = {
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                },
            })
        end,
    },
}
