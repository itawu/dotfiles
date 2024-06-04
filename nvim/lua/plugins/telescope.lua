return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  cmd = "Telescope",
  keys = {
    { "<leader>fa", "<cmd>Telescope aerial<cr>", desc = "aerial", },
    { "<leader>fs", "<cmd>Telescope git_files<cr>", desc = "git_files", },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "oldfiles", },
    -- { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "live_grep", },
    { "<leader>fl", ":execute 'Telescope live_grep default_text=' .  expand('<cword>')<cr>", desc = "live_grep", },
    -- { "<leader>fg", "<cmd>Telescope grep_string<cr>", desc = "grep_string", },
    { "<leader>fg", ":execute 'Telescope live_grep default_text=' . expand('<cword>')<cr>", desc = "grep_string", },
    { "<leader>fr", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", desc = "live_grep_args", },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "help_tags", },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<Esc>"] = require("telescope.actions").close, -- don't go into normal mode, just close
            ["<C-j>"] = require("telescope.actions").move_selection_next, -- scroll the list with <c-j>
            ["<C-k>"] = require("telescope.actions").move_selection_previous, -- scroll the list with <c-k>
            -- ["<C-\\->"] = actions.select_horizontal, -- open selection in new horizantal split
            -- ["<C-\\|>"] = actions.select_vertical, -- open selection in new vertical split
            ["<C-t>"] = require("telescope.actions").select_tab, -- open selection in new tab
            ["<C-y>"] = require("telescope.actions").preview_scrolling_up,
            ["<C-e>"] = require("telescope.actions").preview_scrolling_down,
            ["<C-h>"] = "which_key",
          },
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
      },
    })
    require("telescope").load_extension("aerial")
    require("telescope").load_extension("file_browser")
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("live_grep_args")
  end,
}

