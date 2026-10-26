if true then return {} end
return {
  "lewis6991/gitsigns.nvim",

  event = "UIEnter",

  opts = {
    on_attach = function(bufnr)
      local gitsigns = require("gitsigns")

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr

        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map("n", "]c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gitsigns.nav_hunk("next")
        end
      end)

      map("n", "[c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gitsigns.nav_hunk("prev")
        end
      end)

      -- Actions
      map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "Stgae hunk" })
      map("n", "<leader>gS", gitsigns.reset_hunk, { desc = "Reset hunk" })

      map("v", "<leader>gs", function()
        gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, { desc = "Stage hunk (selection)" })

      map("v", "<leader>gr", function()
        gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, { desc = "Reset hunk (selection)" })

      map("n", "<leader>gb", gitsigns.stage_buffer, { desc = "Stage buffer" })
      map("n", "<leader>gB", gitsigns.reset_buffer, { desc = "Reset buffer" })
      map("n", "<leader>gP", gitsigns.preview_hunk, { desc = "Preview diff float" })
      map("n", "<leader>gp", gitsigns.preview_hunk_inline, { desc = "Preview diff inline" })

      map("n", "<leader>gl", function()
        gitsigns.blame_line({ full = true })
      end, { desc = "Blame line" })

      map("n", "<leader>gd", gitsigns.diffthis, { desc = "Diff now" })

      map("n", "<leader>gD", function()
        gitsigns.diffthis("~")
      end, { desc = "Diff prev commit" })

      map("n", "<leader>gQ", function()
        gitsigns.setqflist("all")
      end, { desc = "Quicklist hunk all file" })
      map("n", "<leader>gq", gitsigns.setqflist, { desc = "Quicklist hunk" })

      -- Toggles
      map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "Toggle git blame line" })
      map("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "Toggle git word diff" })

      -- Text object
      map({ "o", "x" }, "ih", gitsigns.select_hunk, { desc = "in a git hunk" })
    end,
  },
}
