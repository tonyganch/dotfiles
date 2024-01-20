return {
  "folke/noice.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    routes = {
      {
        view = "notify",
        filter = { event = "msg_showmode" },
      },
    },
    cmdline = {
      -- "cmdline_popup" or "cmdline"
      view = "cmdline",
    },
  },
}
