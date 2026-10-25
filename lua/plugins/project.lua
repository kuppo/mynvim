return {
  "DrKJeff16/project.nvim",

  cmd = "Project",

  keys = {
    { "<leader>pp", ":Project fzf-lua<cr>", silent = true, desc = "Projects" },
    {
      "<leader>ps",
      ":Project session<cr>",
      silent = true,
      desc = "Sessions",
    },
    {
      "<leader>pr",
      ":Project recents<cr>",
      silent = true,
      desc = "Recent projects",
    },
  },

  config = function()
    require("project").setup({
      enable_autochdir = true,
      fzf_lua = {
        enabled = true,
      }
    })
  end,
}
