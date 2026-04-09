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
          auto_show = false, -- Disables the automatic dropdown menu
        },
        ghost_text = {
          enabled = false, -- Disables the inline auto-suggest gray text
        },
      },
    },
  },
}
