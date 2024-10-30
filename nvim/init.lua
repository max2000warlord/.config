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

vim.cmd("autocmd! BufWritePost *.zig lua require('neo-tree.events').fire_event('vim_buffer_changed')")
