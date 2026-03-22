return {
  "mason-org/mason-lspconfig.nvim",

  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },

  opts = {
    ensure_installed = {
      -- LSP Only
      "ruff",
      "pyright",
      "clangd",
      "lua_ls",
      "stylua",
      "cmake",
    },
  },
}
