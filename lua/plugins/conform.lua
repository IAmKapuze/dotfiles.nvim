return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black", "isort", "ruff", },
      markdown = { "markdownlint", },
    },
  },
}
