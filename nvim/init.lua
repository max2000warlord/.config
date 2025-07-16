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
  git_status = { enable = false },
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
vim.cmd([[colorscheme cyberdream]])
