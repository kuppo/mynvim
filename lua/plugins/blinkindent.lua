return {
  "saghen/blink.indent",

  evnet = "UIEnter",

  init = function()
    vim.g.indent_guide = false
  end,

  keys = {
    {
      "<leader>ug",
      function()
        local indent = require("blink.indent")
        indent.enable(not indent.is_enabled())
      end,
      desc = "Toggle indent guides",
    },
  },
}
