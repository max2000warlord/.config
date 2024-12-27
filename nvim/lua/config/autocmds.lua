-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.cmd([[colorscheme cyberdream]])

local conform = require("conform")

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("FormatOnSave", {}),
  pattern = "*.py", -- Python files
  callback = function()
    conform.format({ async = false, lsp_fallback = true })
  end,
})
