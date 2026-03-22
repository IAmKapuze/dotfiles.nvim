return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "mason-org/mason.nvim",
  },
  event = { "VeryLazy" },
  opts = {
    ensure_installed = {
      "bandit",
      "flake8",
      "mypy",
      "shellcheck",
      "yamllint",
      "markdownlint",
      "cmakelint",
      "cmakelang",
    }
  }
}
