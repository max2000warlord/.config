return {
  {
    "nvimdev/dashboard-nvim",
    lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
    dependencies = { "3rd/image.nvim" },
    opts = function()
      local logo = [[













      ]]

      logo = string.rep("\n", 15) .. logo .. "\n\n"

      local opts = {
        theme = "doom",
        hide = {
          -- this is taken care of by lualine
          -- enabling this messes up the actual laststatus setting after loading a file
          statusline = false,
        },
        config = {
          header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
          { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
          { action = 'lua LazyVim.pick("oldfiles")()',                 desc = " Recent Files",    icon = " ", key = "r" },
          { action = 'lua LazyVim.pick("live_grep")()',                desc = " Find Text",       icon = " ", key = "g" },
          { action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
          { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
          { action = "LazyExtras",                                     desc = " Lazy Extras",     icon = " ", key = "x" },
          { action = "Lazy",                                           desc = " Lazy",            icon = "󰒲 ", key = "l" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
          footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
          end,
        },
      }

      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
        button.key_format = "  %s"
      end

      -- open dashboard after closing lazy
      if vim.o.filetype == "lazy" then
        vim.api.nvim_create_autocmd("WinClosed", {
          pattern = tostring(vim.api.nvim_get_current_win()),
          once = true,
          callback = function()
            vim.schedule(function()
              vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
            end)
          end,
        })
      end
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          local ok, image_api = pcall(require, "image")
          if not ok then
            return
          end

          local function render_centered_image(image_path)
            local win = vim.api.nvim_get_current_win()
            local win_width = vim.api.nvim_win_get_width(win)
            local term_size_px = require("image.utils.term").get_size()
            local cell_width = term_size_px.cell_width
            local img_width_cells = math.floor(3840 / cell_width)
            local center_x = math.floor((win_width - img_width_cells) / 2)
            image_api
              .from_file(image_path, {
                window = win,
                buffer = vim.api.nvim_get_current_buf(),
                x = center_x,
                y = 10,
                with_virtual_padding = false,
              })
              :render()
          end

          image_api.clear()
          vim.defer_fn(function()
            render_centered_image(vim.fn.stdpath("config") .. "/media/you-died-fg.png")
          end, 100)

          -- image_api.clear()
          -- vim.defer_fn(function()
          --   render_centered_image(vim.fn.stdpath("config") .. "/media/cachyos.png", 15)
          -- end, 100)
        end,
      })
      return opts
    end,
  },
}
