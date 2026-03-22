return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    shell = vim.o.shell,
    auto_scroll = false,
  },
  keys = {
    { "<C-t>", "<cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle [t]erminal" },
  },
}
