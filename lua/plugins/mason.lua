return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "clangd",
        "lua-language-server",
        "rust-analyzer",
        "ruff",
        "taplo",
        "zls",
        "texlab",
        "tinymist",
        "codelldb",
        "debugpy",
        "nixfmt",
        "clang-format",
        "stylua",
        "ty",
      },
      auto_update = false,
      run_on_start = true,
    },
  },
}
