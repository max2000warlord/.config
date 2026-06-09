return {
  {
    "ssnibles/matugen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("matugen_colorscheme").setup({
        file = "~/.cache/matugen/colors.jsonc",
        plugins = {
          base = true,
          treesitter = true,
          cmp = true,
          lualine = false,
        },
        custom_highlights = function(colors, cfg, set_hl)
          set_hl("Normal", { fg = colors.on_background, bg = "none" })
          set_hl("NormalFloat", { bg = "none" })
          set_hl("NormalNC", { bg = "none" })
          set_hl("NeoTreeNormal", { fg = colors.on_surface, bg = "none" })
          set_hl("NeoTreeNormalNC", { fg = colors.on_surface, bg = "none" })
          set_hl("NeoTreeEndOfBuffer", { bg = "none" })
        end,
      })
    end,
  },
}
