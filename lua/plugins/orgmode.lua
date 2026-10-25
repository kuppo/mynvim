return {
  {
    "nvim-orgmode/orgmode",

    ft = "org",

    dependencies = {
      {
        "chipsenkbeil/org-roam.nvim",

        opts = {
          directory = "~/org/notes",
          bindings = { prefix = "<leader>on" },
        },
      },

      { "nvim-orgmode/org-bullets.nvim", opts = {} },
    },

    opts = {
      org_agenda_files = "~/org/*",
      org_default_notes_file = "~/org/working_on.org",
      org_todo_keywords = { "TODO(t)", "ONGOING(o)", "PENGDING(p)", "|", "DROPPED(d)", "DONE(d)" },
      org_startup_folded = "content",
      org_hide_leading_stars = true,
      mappings = {
        -- disable_all = true,
        org = {
          org_change_date = { "cod", desc = "org change date" },
          org_priority_up = { "coR", desc = "org priority up" },
          org_priority_down = { "cor", desc = "org priority down" },
          org_todo = { "cot", desc = "org todo" },
          org_todo_prev = { "coT", desc = "org todo previous" },
        },
      },
    },
  },
}
