if vim.fn.executable("xxd") == 1 then
  vim.keymap.set('n', '<leader>xx', '<cmd>%!xxd -g 1<CR>', { desc = 'Transform to he[x]' })
  vim.keymap.set('n', '<leader>xr', '<cmd>%!xxd -r<CR>',   { desc = '[r]estore from hex' })

  local ok, wk = pcall(require, 'which-key')
  if ok then
    wk.add({
      { "<leader>x", group = "He[x] ..." },
    })
  end
end
