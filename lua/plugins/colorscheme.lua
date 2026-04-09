return {
  {
    "everviolet/nvim",
    name = "evergarden",
    lazy = false,
    priority = 1000,
    opts = {
      theme = {
        variant = "fall",
        accent = "green",
      },
      editor = {
        transparent_background = false,
        sign = { color = "none" },
        float = {
          color = "mantle",
          solid_border = false,
        },
        completion = {
          color = "surface0",
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "evergarden",
    },
  },
}
