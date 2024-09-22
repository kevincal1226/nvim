-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
function _G.open_split_terminal_and_resize()
    vim.cmd("split | terminal")

    vim.cmd("resize -12")

    vim.cmd("startinsert")
end

require("config.keymaps")

local wk = require("which-key")

require("plugins.snippets")

-- add custom key binds
wk.add({
    {
        "<leader>t",
        ":lua open_split_terminal_and_resize()<CR>",
        desc = "Open Split Terminal",
    },
})

-- change autocomplete to tab instead of enter
local cmp = require("cmp")
cmp.setup({
    mapping = {
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = "nvim_lsp" },
        --{ name = "buffer" },
        { name = "path" },
    },
})

local format_group =
    vim.api.nvim_create_augroup("PythonFormatOnSave", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
    group = format_group,
    pattern = "*.py",
    callback = function()
        -- Run Ruff to fix issues before saving
        vim.cmd([[silent! !ruff --fix %]])
    end,
})
