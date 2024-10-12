-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("neo-tree").setup({
  window = {
    position = "right", -- Set Neo-tree to open on the right
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false, -- Show dotfiles by default
      hide_gitignored = false, -- Show gitignored files if desired
      hide_by_name = {
        --"node_modules" -- Uncomment to hide specific directories
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
vim.cmd([[colorscheme cyberdream]])
