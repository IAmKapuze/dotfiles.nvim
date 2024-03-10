return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Highlight and search for todo comments like TODO, HACK, BUG, FIX, NOTE
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  -- Add indentation guides
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },

  -- Toggle terminal
  { 'akinsho/toggleterm.nvim', version = "*", config = true, keys = {{ "<C-t>", "<cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle [t]erminal" }}},
}
