return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        json = { "prettierd" },
        jsonc = { "prettierd" },
      },
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {
          filetypes = { "sh", "bash" },
        },

        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },

        clangd = {
          mason = false,
          cmd = {
            "/usr/bin/clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
          },
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
        },
      },

      -- Tell LazyVim's lspconfig handler not to hand clangd to Mason
      setup = {
        clangd = function(_, opts)
          require("lspconfig").clangd.setup(opts)
          return true
        end,
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {}, -- empty = don't auto-install
      automatic_installation = false,
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "bezhermoso/tree-sitter-ghostty",
    build = "make nvim_install",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "ghostty",
        "latex",
        "tsx",
        "typescript",
      })
    end,
  },
  {
    "bezhermoso/tree-sitter-ghostty",
    build = "make nvim_install",
  },
  {
    "nvzone/typr",
    cmd = "TyprStats",
    dependencies = "nvzone/volt",
    opts = {},
  },
  {
    "romus204/tree-sitter-manager.nvim",
    dependencies = {}, -- tree-sitter CLI must be installed system-wide
    config = function()
      require("tree-sitter-manager").setup({
        -- Default Options
        -- ensure_installed = {}, -- list of parsers to install at the start of a neovim session
        -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
        -- auto_install = false, -- if enabled, install missing parsers when editing a new file
        -- highlight = true, -- treesitter highlighting is enabled by default
        -- languages = {}, -- override or add new parser sources
        -- parser_dir = vim.fn.stdpath("data") .. "/site/parser",
        -- query_dir = vim.fn.stdpath("data") .. "/site/queries",
      })
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "eandrju/cellular-automaton.nvim",
  },
  {
    "https://gitlab.com/itaranto/preview.nvim",
    version = "*",
    opts = {
      -- Your options.
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      render_modes = true,
      anti_conceal = { enabled = true },
      image = {
        enabled = false,
      },
    },
  },
  {
    "folke/lazy.nvim",
    init = function() end,
  },
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        doc = {
          inline = false,
          float = false, -- keeps the popup on cursor behaviour
        },
      },
    },
  },
  {
    "3rd/image.nvim",
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    cond = function()
      return not vim.g.neovide
    end,
    opts = {
      processor = "magick_cli",
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = true,
          only_render_image_at_cursor = true,
          only_render_image_at_cursor_mode = "popup",
        },
      },
    },
  },
  {
    "Maduki-tech/nvim-plantuml",
    config = function()
      require("plantuml").setup({
        output_dir = "/tmp",
        view = "xdg-open",
        auto_refresh = true,
      })
    end,
  },
  {
    "aklt/plantuml-syntax",
    ft = "plantuml",
  },
  { import = "lazyvim.plugins.extras.lang.clangd", enabled = false },
  {
    "ojroques/nvim-osc52",
    event = "VeryLazy",
    config = function()
      local osc52 = require("osc52")

      osc52.setup({
        max_length = 0, -- 0 = no limit
        silent = false, -- show errors
        trim = false, -- don't trim whitespace
      })

      -- Automatically copy any yank to the system clipboard via OSC52
      local function copy()
        if vim.v.event.operator == "y" and vim.v.event.regname == "" then
          require("osc52").copy_register("")
        end
      end

      vim.api.nvim_create_autocmd("TextYankPost", { callback = copy })

      -- Optional keymaps (manual copy)
      vim.keymap.set("n", "<leader>c", osc52.copy_operator, { expr = true, desc = "Copy via OSC52" })
      vim.keymap.set("n", "<leader>cc", "<leader>c_", { remap = true, desc = "Copy line via OSC52" })
      vim.keymap.set("x", "<leader>c", osc52.copy_visual, { desc = "Copy selection via OSC52" })
    end,
  },
  {
    "cephei8/odin.nvim",
    lazy = false,
    opts = {},
  },
}
