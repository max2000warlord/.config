return {
  {
    "monaqa/dial.nvim",
    config = function()
      local augend = require("dial.augend")

      -- Register custom groups, including booleans, days, and months
      require("dial.config").augends:register_group({
        -- Default group
        default = {
          augend.integer.alias.decimal, -- Decimal numbers (1, 2, 3, etc.)
          augend.date.alias["%d/%m/%Y"], -- Date (YYYY/MM/DD format)

          -- Custom augend for toggling true/false
          augend.constant.new({
            elements = { "true", "false" },
            word = true,
            cyclic = true,
          }),

          -- Custom augend for toggling var/const
          augend.constant.new({
            elements = { "var", "const" },
            word = true,
            cyclic = true,
          }),

          -- Custom augend for iterating days of the week
          augend.constant.new({
            elements = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" },
            word = true, -- Match the entire word
            cyclic = true, -- Loop back after Sunday
          }),

          -- Custom augend for iterating months of the year
          augend.constant.new({
            elements = {
              "January",
              "February",
              "March",
              "April",
              "May",
              "June",
              "July",
              "August",
              "September",
              "October",
              "November",
              "December",
            },
            word = true, -- Match the entire word
            cyclic = true, -- Loop back after December
          }),
        },
      })

      -- Key mappings for dial.nvim functionality
      vim.api.nvim_set_keymap("n", "<C-a>", "<Plug>(dial-increment)", { noremap = true })
      vim.api.nvim_set_keymap("n", "<C-x>", "<Plug>(dial-decrement)", { noremap = true })
      vim.api.nvim_set_keymap("v", "<C-a>", "<Plug>(dial-increment)", { noremap = true })
      vim.api.nvim_set_keymap("v", "<C-x>", "<Plug>(dial-decrement)", { noremap = true })
    end,
  },
}
