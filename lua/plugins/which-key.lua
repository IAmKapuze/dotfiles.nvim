return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').register {
        ['<leader>s'] = { name = '[S]earch by Telescope', _ = 'which_key_ignore' },
        ['<leader>g'] = { name = '[G]it ...',             _ = 'which_key_ignore' },
        ['<leader>e'] = { name = '[E]xplore files',       _ = 'which_key_ignore' },
        ['<leader>l'] = { name = '[L]SP functions',       _ = 'which_key_ignore' },
        ['<leader>t'] = { name = '[T]ab ...',             _ = 'which_key_ignore' },
        ['<leader>b'] = { name = '[B]uffer ...',          _ = 'which_key_ignore' },
        ['<leader>x'] = { name = 'He[x] ...',             _ = 'which_key_ignore' },
      }
    end,
  },
}
