vim.keymap.set({ 'i', 'v' }, 'kj', '<Esc>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'tn', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'tp', ':tabprevious<CR>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>n', ':Neotree toggle<CR>', { desc = "NeoTree", silent = true })

return {}
