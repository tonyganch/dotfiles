return {
  {
    "olimorris/persisted.nvim",
    enabled = false,
    keys = {
      { "<leader>sl", "<cmd>Telescope persisted<cr>" },
      { "<leader>su", "<cmd>SessionSave<cr>" },
    },
    config = function()
      require("persisted").setup({
        use_git_branch = true,
      })
      require("telescope").load_extension("persisted")
    end,
  },
}
