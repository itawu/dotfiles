return {
  "ThePrimeagen/harpoon",
  cmd = "Harpoon",
  keys = {
    {
      "<leader>af", "<cmd>lua require(\'harpoon.mark\').add_file()<cr>", desc = "Add to Harpoon",
    },
    {
      "<leader>tg", "<cmd>lua require(\'harpoon.ui\').toggle_quick_menu()<cr>", desc = "Show Harpoon",
    },
    {
      "<leader>f1", "<cmd>lua require(\'harpoon.ui\').nav_file(1)<cr>", desc = "Harpoon Buffer 1",
    },
    {
      "<leader>f2", "<cmd>lua require(\'harpoon.ui\').nav_file(2)<cr>", desc = "Harpoon Buffer 2",
    },
    {
      "<leader>f3", "<cmd>lua require(\'harpoon.ui\').nav_file(3)<cr>", desc = "Harpoon Buffer 3",
    },
  },
}

