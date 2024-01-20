return {
  {
    "nvimdev/dashboard-nvim",

    opts = function(_, opts)
      local logo = [[
            _/\/\______/\/\__/\/\/\/\/\/\____/\/\/\/\____/\/\______/\/\_
      _/\/\/\__/\/\/\__/\____________/\/\____/\/\__/\/\__/\__/\/\_ 
    _/\/\/\/\/\/\/\__/\/\/\/\/\____/\/\____/\/\__/\/\/\/\/\/\/\_  
    _/\/\__/\__/\/\__/\/\__________/\/\____/\/\__/\/\/\__/\/\/\_   
  _/\/\______/\/\__/\/\/\/\/\/\____/\/\/\/\____/\/\______/\/\_    
  ____________________________________________________________
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
