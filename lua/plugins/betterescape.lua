return {
  "max397574/better-escape.nvim",

  event = "InsertEnter",

  opts = {
    default_mappings = false,
    mappings = {
      i = {
        [" "] = {
          ["<tab>"] = {
            function()
              vim.defer_fn(function()
                vim.o.ul = vim.o.ul
                require("luasnip").expand_or_jump()
              end, 1)
            end,
          },
        },
        j = {
          k = "<Esc>",
        },
      },
      c = {
        j = {
          k = "<C-c>",
        },
      },
      v = {
        j = {
          k = "<Esc>",
        },
      },
      s = {
        j = {
          k = "<Esc>",
        },
      },
    },
  },
}
