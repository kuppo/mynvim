return {
  "folke/lazydev.nvim",
  cmd = { "LazyDev" },
  ft = "lua",
  opts = {
    library = {
      { path = "${3rd}/luv/library", words = { "vim%.uv", "vim%.loop" } },
    },
    integrations = {
      lspconfig = true,
      cmp = true,
    },
    enabled = function(root_dir)
      return not vim.uv.fs_stat(root_dir .. "/.luarc.json")
    end,
  },
}
