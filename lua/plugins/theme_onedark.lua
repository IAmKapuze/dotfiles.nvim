return {
  {
    'navarasu/onedark.nvim',
    opts = {
      style = 'warmer',
    },
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup{ style = 'warmer' }
      vim.cmd.colorscheme 'onedark'
    end,
  },
}
