vim.keymap.set('n',          '<Esc>',      '<cmd>nohlsearch<CR>',     { desc = 'Clear highlight on search' })
vim.keymap.set('t',          '<Esc><Esc>', '<C-\\><C-n>',             { desc = 'Exit terminal mode' }) -- This will not work in all terminal emulators/tmux/etc
vim.keymap.set({ 'n', 'v' }, 'x',          '"_x',                     { desc = 'Disable copy on delete' })
vim.keymap.set('n',          '<C-h>',      '<C-w><C-h>',              { desc = 'Move focus to the left window' })
vim.keymap.set('n',          '<C-l>',      '<C-w><C-l>',              { desc = 'Move focus to the right window' })
vim.keymap.set('n',          '<C-j>',      '<C-w><C-j>',              { desc = 'Move focus to the lower window' })
vim.keymap.set('n',          '<C-k>',      '<C-w><C-k>',              { desc = 'Move focus to the upper window' })
vim.keymap.set('n',          '<leader>tt', '<cmd>tabnew<CR>',         { desc = 'New [t]ab' })
vim.keymap.set('n',          '<leader>tn', '<cmd>tabnext<CR>',        { desc = '[n]ext tab' })
vim.keymap.set('n',          '<leader>tp', '<cmd>tabprevious<CR>',    { desc = '[p]revious tab' })
vim.keymap.set('n',          '<leader>tc', '<cmd>tabclose<CR>',       { desc = '[c]lose tab' })
vim.keymap.set('n',          '<leader>bn', '<cmd>bnext<CR>',          { desc = '[n]ext buffer' })
vim.keymap.set('n',          '<leader>bp', '<cmd>bprevious<CR>',      { desc = '[p]revious buffer' })
vim.keymap.set('n',          '<leader>bc', '<cmd>bdelete<CR>',        { desc = '[c]lose buffer' })
vim.keymap.set('n',          '<leader>c',  '<cmd>cd %:p:h<CR>',       { desc = '[c]d to dir of the current file' })
vim.keymap.set('n',          '<leader>xx', '<cmd>%!xxd -g 1<CR>',     { desc = 'Transform to he[x]' })
vim.keymap.set('n',          '<leader>xr', '<cmd>%!xxd -r<CR>',       { desc = '[r]estore from hex' })
vim.keymap.set('n',          '<leader>ws', '<cmd>split<CR>',          { desc = '[s]plit window' })
vim.keymap.set('n',          '<leader>wv', '<cmd>vsplit<CR>',         { desc = '[v]split window' })