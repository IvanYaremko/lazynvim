return {
  -- 1. Handle Inlay Hints
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- This correctly disables inlay hints on startup
      inlay_hints = { enabled = false },
    },
  },

  -- 2. Handle Animations and Scroll (Snacks)
  {
    "folke/snacks.nvim",
    opts = {
      -- This correctly disables animations and smooth scroll on startup
      animate = { enabled = false },
      scroll = { enabled = false },
      indent = {
        enabled = true,
        animate = { enabled = false },
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        signature = {
          auto_open = {
            enabled = false, -- Disables the automatic pop-up on `(`
          },
        },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          -- 1. This allows the dropdown menu to pop up automatically as you type
          auto_show = true,
        },
        ghost_text = {
          -- 2. This keeps the "gray text" preview ahead of your cursor disabled
          enabled = false,
        },
        accept = {
          auto_brackets = {
            -- 3. This ensures it doesn't add () or arguments automatically
            enabled = false,
          },
        },
      },
    },
  },
  -- Auto-close/rename HTML tags using Treesitter
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },

  -- Preview CSS colors
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        names = false, -- "Red" won't highlight, but #ff0000 will
        mode = "background",
      },
    },
  },
  {
    "olrtg/emmet-language-server",
    -- This hooks into LSP so it shows up in your completion menu
  },
}
