return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
        templ = { "templ" },
      },
    },
  },
  -- Add templ to lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
        html = {},
      },
    },
  },
}
