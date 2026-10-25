return {
  "ingur/floatty.nvim",

  config = function()
    local floatty = require("floatty")
    local term = floatty.setup({
      window = {
        width = 0.8,
        height = 1,
      },
    })
    vim.keymap.set({ "n", "t" }, "<C-t>", function()
      term.toggle()
    end)
  end,
}
