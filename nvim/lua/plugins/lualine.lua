return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function(_, opts)
      local function session_name()
        local name = require("possession.session").session_name
        return name and "📌 " .. name or ""
      end

      opts.options.globalstatus = true
      opts.sections.lualine_b = { session_name }

      opts.sections.lualine_y = {
        { "location", padding = { left = 0, right = 1 } },
      }

      opts.sections.lualine_z = {}
      --
    end,
  },
}
