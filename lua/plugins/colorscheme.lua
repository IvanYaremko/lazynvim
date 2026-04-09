return {
  -- Add Kanagawa plugin
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      compile = true, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- set background color, or true if you want transparency
      dimInactive = false, -- dim inactive windows
      terminalColors = true, -- define vim.g.terminal_color_{0..15}
      colors = {
        palette = {},
        theme = "dragon",
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "dragon", -- Load "wave" theme by default; options: "wave", "dragon", "lotus"
    },
  },

  -- Configure LazyVim to load it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
