return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    spec = {
      { "<leader>b", group = "[b]uffer ..." },
      { "<leader>t", group = "[t]ab ..."    },
      { "<leader>w", group = "[w]indow ..." },
    },
  },
}
