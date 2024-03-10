return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    opts = {
      spec = {
        { "<leader>b", group = "[b]uffer ..."              },
        { "<leader>g", group = "[g]it ..."                 },
        { "<leader>l", group = "[l]SP functions ..."       },
        { "<leader>s", group = "[s]earch by Telescope ..." },
        { "<leader>t", group = "[t]ab ..."                 },
        { "<leader>w", group = "[w]indow ..."              },
        { "<leader>x", group = "He[x] ..."                 },
      },
    },
  },
}
