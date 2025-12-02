return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      dashboard = {
        preset = {
          --          header = [[
          --███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
          --████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
          --██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
          --██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
          --██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
          --╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
        },
        sections = {
          --{ section = "header" },
          {
            section = "terminal",
            cmd = "timg --center ~/Pictures/neovim.png",
            height = 30,
            padding = 0,
          },
          {
            pane = 2,
            { section = "keys", gap = 1, padding = 1 },
            { section = "startup" },
          },
        },
      },
      explorer = {},
      image = {},
      picker = {
        sources = {
          explorer = {
            hidden = true,
            highlight_hidden = false,
            layout = { layout = { position = "right" } },
            follow_file = false,
            jump = { close = false },
            supports_live = false,
          },
        },
      },
    },
  },
}
