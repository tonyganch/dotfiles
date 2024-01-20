return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    },
    keys = {
      { "<leader>ff", require("telescope.builtin").find_files },
      { "<leader>fg", require("telescope.builtin").live_grep },
      { "<leader>fb", require("telescope.builtin").buffers },
      { "<leader>fh", require("telescope.builtin").help_tags },
    },
  },
}
