return {
  "mfussenegger/nvim-lint",

  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },

  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = {
        "ruff",
        "bandit",
        "flake8",
        "mypy",
      },
      c = { "cppcheck" },
      cpp = { "cppcheck" },
      markdown = { "markdownlint" },
      cmake = { "cmakelint", "cmake_lint" },
      yaml = { "yamllint" },
      yml = { "yamllint" },
      sh = { "shellcheck", "bash" },
      bash = { "shellcheck", "bash" },
      zsh = { "shellcheck", "bash", "zsh" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function() lint.try_lint() end,
    })
  end,
}
