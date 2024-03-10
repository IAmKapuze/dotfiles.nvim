return {
  'numToStr/Comment.nvim',
  config = function ()
    local api = require('Comment.api')

    vim.keymap.set('n', '<leader>/', api.toggle.linewise.current, { desc = 'Comment line //' })
    vim.keymap.set('n', '<leader>?', api.toggle.blockwise.current, { desc = 'Comment block /**/' })

    local esc = vim.api.nvim_replace_termcodes(
        '<ESC>', true, false, true
    )

    vim.keymap.set('x', '<leader>/', function()
        vim.api.nvim_feedkeys(esc, 'nx', false)
        api.toggle.linewise(vim.fn.visualmode())
    end,
    { desc = 'Comment visual selected lines //' })

    vim.keymap.set('x', '<leader>?', function()
        vim.api.nvim_feedkeys(esc, 'nx', false)
        api.toggle.blockwise(vim.fn.visualmode())
    end,
    { desc = 'Comment visual selected block /**/' })
  end
}
