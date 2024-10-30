vim.keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = 'Open Explorer' })

vim.keymap.set('i', 'jk', '<esc>', { desc = 'Exit insert mode' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
