return {
  "stevearc/conform.nvim",

  event = "UIEnter",

  keys = {
    {
      "<leader>FF",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end,
      desc = "[F]ormat [F]ile",
    },
  },

  opts = {
    formatters_by_ft = {
      ["lua"] = { "stylua" },
      ["python"] = { "ruff_format" },
      ["nix"] = { "nixfmt" },
      ["typst"] = { "typstyle" },
      ["toml"] = { "taplo" },
      ["tex"] = { "tex-fmt" },
    },
    format_on_save = {
      lsp_format = "fallback",
      timeout_ms = 1000,
    },
  },
}
