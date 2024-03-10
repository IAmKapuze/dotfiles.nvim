return {
  { -- Git
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = true,
    keys = {
      { '<leader>gg', ':Neogit<CR>', mode = { 'n' }, desc = 'Neo[g]it status' },
    },
  }
}
