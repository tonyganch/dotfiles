return {
  {
    "jedrzejboczar/possession.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>sl", "<cmd>Telescope possession list<cr>" },
      { "<leader>su", "<cmd>PossessionSave<cr>" },
      { "<leader>sr", "<cmd>PossessionRename<cr>" },
      { "<leader>sd", "<cmd>PossessionDelete<cr>" },
      { "<leader>sn", ":PossessionSave " },
    },
    config = function()
      require("possession").setup({})
      require("telescope").load_extension("possession")
    end,
  },
}
