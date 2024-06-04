return {
  "nvim-telescope/telescope-live-grep-args.nvim",
  lazy = false,
  config = function()
    require("telescope").setup({
      defaults = {
        auto_quoting = true,
        mappings = {
          i = {
            ["<C-k>"] = require("telescope-live-grep-args.actions").quote_prompt(),
            ["<C-i>"] = require("telescope-live-grep-args.actions").quote_prompt({ postfix = " --iglob " }),
            ["<C-j>"] = require("telescope-live-grep-args.actions").to_fuzzy_refine,
          }
        }
      }
    })
    require("telescope").load_extension("live_grep_args")
  end,
}

