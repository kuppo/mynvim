if true then return {} end
return {
  "nvim-neo-tree/neo-tree.nvim",

  keys = {
    {
      "<leader>fe",
      ":Neotree toggle reveal_force_cwd<cr>",
      desc = "Explorer",
      silent = true,
    },
    { "<leader>fo", ":Neotree<cr>", desc = "Focus explorer", silent = true },
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    { "nvim-tree/nvim-web-devicons", opts = {} },
  },

  cmd = { "Neotree" },

  opts = {
    -- close_if_last_window = true,
    clipboard = {
      sync = "universal",
    },
    source_selector = { winbar = true, statusline = false },
    window = {
      position = "right",
      width = 30,
      mappings = {
        ["C"] = "none",
        ["<C-b>"] = { "scroll_preview", config = { direction = 10 } },
        ["<C-f>"] = { "scroll_preview", config = { direction = -10 } },
        ["S"] = "none",
        ["s"] = "none",
        ["t"] = "none",
        ["<c-s>"] = "open_split",
        ["<c-v>"] = "open_vsplit",
        ["<c-t>"] = "open_tabnew",
      },
    },
    filesystem = {
      hijack_netrw_behavior = "open_current",
      follow_current_file = { enabled = true, leave_dirs_open = false },
      filtered_items = {
        always_show = { ".gitignore" },
      },
      window = {
        mappings = {
          ["H"] = "none",
          ["<A-h>"] = "toggle_hidden",
        },
      },
    },
  },
}
