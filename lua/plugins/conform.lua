return {
  "stevearc/conform.nvim",

  init = function()
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.add({
        { "<leader>l", group = "[l]sp ..." },
      })
    end
  end,

  opts = {
    formatters_by_ft = {
      bash = { "shfmt" },
      c = { "clang-format" },
      cmake = { "cmake_format" },
      cpp = { "clang-format" },
      css = { "prettier" },
      html = { "prettier" },
      javascript = { "prettier" },
      json = { "prettier" },
      lua = { "stylua" },
      markdown = { "markdownlint", "prettier", fix = true },
      python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
      sh = { "shfmt" },
      typescript = { "prettier" },
      yaml = { "yamlfmt", "prettier" },
      zsh = { "shfmt" },
    },
    formatters = {
      ruff_format = {
        append_args = { "--line-length", "79" },
      },
    },
  },

  keys = {
    { "<leader>lf", function() require("conform").format() end, desc = "LSP: [f]ormat buffer" },
  },
}
