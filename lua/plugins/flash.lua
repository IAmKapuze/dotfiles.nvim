return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    search = {
      mode = "search",
    },
    modes = {
      char = {
        highlight = { backdrop = false },
        search = { wrap = true },
        jump_labels = true,
      },
    },
  },
  keys = {
    { "<C-s>", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<C-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  config = function(_, opts)
    require('flash').setup(opts)

    vim.api.nvim_create_autocmd('CmdlineLeave', {
      group = vim.api.nvim_create_augroup('flash-disable-on-new-search', { clear = true }),
      callback = function()
          require("flash.plugins.search").enabled = false
      end,
    })
  end
}
