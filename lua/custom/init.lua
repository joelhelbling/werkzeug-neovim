-- remap escape
vim.keymap.set({ 'i', 'v' }, 'kj', '<Esc>', { noremap = true, silent = true })

-- tab movement
vim.keymap.set({ 'n', 'v' }, 'tn', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'tp', ':tabprevious<CR>', { noremap = true, silent = true })

-- show file tree
vim.keymap.set({ 'n', 'v' }, '<leader>n', ':Neotree toggle<CR>', { desc = "NeoTree", silent = true })

-- pane movement
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})

-- new panes split to the right and below
vim.opt.splitbelow = true -- Open new split below
vim.opt.splitright = true -- Open new split to the right

-- indention
local indent = 2
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.softtabstop = indent
vim.opt.tabstop = indent

return {}
