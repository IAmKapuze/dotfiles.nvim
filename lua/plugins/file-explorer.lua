return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local api = require('nvim-tree.api')

    require('which-key').add {
      { '<leader>e', group = 'File [e]xplorer ...', },
    }

    vim.keymap.set('n', '<leader>ee', api.tree.toggle,      { desc = '[e]xplorer toggle' })
    vim.keymap.set('n', '<leader>eo', api.tree.open,        { desc = 'Explorer f[o]cus' })
    vim.keymap.set('n', '<leader>e?', api.tree.toggle_help, { desc = 'Explorer help [?]' })

    require("nvim-tree").setup {
      git = {
        ignore = false,
      },
    }
  end,
}
