return {
  { -- Toggle terminal
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      shell = 'zsh',
    },
    keys = {
      { "<C-t>", "<cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle [t]erminal" },
    },
  },
}
