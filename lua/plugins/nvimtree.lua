local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true,
    }
  end

  -- default mappings
  api.map.on_attach.default(bufnr)

  -- custom mappings
  local set = vim.keymap.set
  local del = vim.keymap.del
  del("n", "g?", { buf = bufnr })
  del("n", "<c-]>", { buf = bufnr })

  set("n", "?", api.tree.toggle_help, opts("Help"))
  set("n", ".", api.tree.change_root_to_node, opts("Set root directory"))
  set("n", "h", api.node.navigate.parent_close, opts("Close directory"))
  set("n", "l", api.node.open.edit, opts("Open or edit"))
  set("n", "<BS>", api.tree.change_root_to_parent, opts("Change root to parent directory"))
end

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
    on_attach = my_on_attach,
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
