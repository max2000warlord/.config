-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("neo-tree").setup({
  window = {
    position = "right", -- Open Neo-tree on the right side
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false, -- Show dotfiles by default
      hide_gitignored = false, -- Optionally, show gitignored files as well
      hide_by_name = {
        --"node_modules" -- You can uncomment this line to hide specific directories
      },
      always_show = { -- Keep some specific files visible even if they are dotfiles
        ".gitignore",
        ".env",
      },
      never_show = { -- Never show these files
        --".DS_Store",
        --"thumbs.db"
      },
      never_show_by_pattern = { -- Use patterns to never show certain files
        --".null-ls_*",
      },
    },
  },
})
-- Temporarily disable all formatting on save for Zig files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "zig",
  callback = function()
    vim.bo.formatprg = ""
    vim.bo.formatexpr = ""
    -- Disable format on save if you have it enabled
    vim.g.zig_fmt_autosave = 0
  end,
})

-- More detailed debugging
--vim.api.nvim_create_autocmd({ "BufWritePre", "BufWritePost" }, {
--  pattern = "*.zig",
--  callback = function(ev)
--    local when = ev.event == "BufWritePre" and "before" or "after"
--    print("--- Debug: " .. when .. " save ---")
--    print("Format program: " .. (vim.bo.formatprg or "none"))
--    print("Format expression: " .. (vim.bo.formatexpr or "none"))
--    -- Get shell setting
--    print("Shell: " .. vim.o.shell)
--  end,
--})
