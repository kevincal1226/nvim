-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Disable the default keymap for <leader><leader>
--
require("telescope").load_extension("file_browser")

-- Define the custom mapping
vim.keymap.set("n", "<leader><space>", ":Telescope file_browser path=%:p:h=%:p:h<cr>", { desc = "Browse files" })

vim.keymap.set(
    "n",
    "<leader>T",
    ":tabnew | term<CR>",
    { desc = "Open New Terminal Tab", noremap = true, silent = true }
)
-- Load the file browser extension
