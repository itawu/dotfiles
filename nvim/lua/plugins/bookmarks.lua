return {
  "MattesGroeger/vim-bookmarks",
  cmd = "BookmarkToggle",
  keys = {
    {
      "<leader>mm", "<cmd>BookmarkToggle<cr>", desc = "BookmarkToggle",
    },
    {
      "<leader>ma", "<cmd>BookmarkShowAll<cr>", desc = "BookmarkShowAll",
    },
    {
      "<leader>mc", "<cmd>BookmarkClear<cr>", desc = "BookmarkClear",
    },
    {
      "<leader>mx", "<cmd>BookmarkClearAll<cr>", desc = "BookmarkClearAll",
    },
  },
  init = function()
    vim.g.bookmark_sign = ""
  end,
}

