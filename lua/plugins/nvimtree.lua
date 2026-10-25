return {
  "nvim-tree/nvim-tree.lua",

  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
  },

  cmd = { "NvimTreeFocus", "NvimTreeToggle", "NvimTreeFindFile", "NvimTreeCollapse" },

  keys = {
    { "<leader>fe", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
    { "<leader>fo", "<cmd>NvimTreeFocus<cr>", desc = "Focus NvimTree" },
  },

  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
  end,

  opts = {
    hijack_cursor = true,
    disable_netrw = false,
    hijack_netrw = true,
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
      side = "right",
    },
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = true,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  },
}
