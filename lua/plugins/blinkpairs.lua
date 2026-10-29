return {
  "saghen/blink.pairs",

  event = "InsertEnter",

  dependencies = { "saghen/blink.lib", lazy = true },

  version = "*",

  build = function()
    require("blink.pairs").download():pwait(60000)
  end,

  opts = {},
}
