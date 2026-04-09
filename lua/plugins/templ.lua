return {
  -- Add Treesitter support for templ
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "templ" })
      end
    end,
  },
  -- Ensure the LSP is installed
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
        html = { filetypes = { "html", "templ" } },
        tailwindcss = {
          filetypes = { "templ", "javascript", "typescript", "react" },
          init_options = { userLanguages = { templ = "html" } },
        },
      },
    },
  },
}
