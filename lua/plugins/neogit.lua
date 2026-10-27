return {
  "neogitorg/neogit",

  cmd = "Neogit",

  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
  },

  opts = {
    initial_branch_name = "dev",
    integrations = {
      fzflua = true,
    },
  },
}
