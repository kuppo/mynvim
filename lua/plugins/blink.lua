return {
  "saghen/blink.cmp",

  dependencies = {
    {
      "saghen/blink.lib",
      lazy = true,
    },
    "L3MON4D3/LuaSnip",
  },

  build = function()
    require("blink.cmp").build():pwait(60000)
  end,

  event = { "InsertEnter", "CmdlineEnter" },

  opts = {
    snippets = { preset = "luasnip" },
    sources = {
      default = { "snippets", "lsp", "buffer", "path" },
    },
    keymap = {
      preset = "super-tab",
      ["<Up>"] = {
        "select_prev",
        "fallback",
      },
      ["<Down>"] = {
        "select_next",
        "fallback",
      },
      ["<c-d>"] = {
        "scroll_documentation_down",
        "fallback",
      },
      ["<c-u>"] = {
        "scroll_documentation_up",
        "fallback",
      },
      ["<C-k>"] = {
        -- "show",
        "select_prev",
        "fallback_to_mappings",
      },
      ["<C-j>"] = {
        -- "show",
        "select_next",
        "fallback_to_mappings",
      },
      ["<C-p>"] = false,
      ["<C-n>"] = false,
      ["<C-b>"] = false,
      ["<C-f>"] = false,
    },
    fuzzy = {
      implementation = "prefer_rust_with_warning",
      sorts = { "exact", "score", "sort_text" },
    },
    completion = {
      menu = { auto_show = true },
      trigger = { show_in_snippet = false },
      documentation = { auto_show = true },
      ghost_text = { enabled = true },
      list = { selection = { preselect = false } },
    },
    signature = { enabled = true },
    cmdline = {
      keymap = {
        preset = "inherit",
      },
      -- sources = { "omni", "cmdline" },
      completion = {
        list = { selection = { preselect = true } },
        menu = { auto_show = true },
      },
    },
  },
}
