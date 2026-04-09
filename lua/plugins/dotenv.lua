return {
  "ellisonleao/dotenv.nvim",
  config = function()
    require("dotenv").setup({
      enable_on_load = true, -- loads .env at the root of your project
      verbose = false, -- prevents a message from popping up every time
    })
  end,
}
