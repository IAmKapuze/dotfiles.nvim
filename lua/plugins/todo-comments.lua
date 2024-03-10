return {
  { -- Highlight and search for todo comments like TODO, HACK, BUG, FIX, NOTE
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      signs = false,
    },
  },
}
