-- remap escape
vim.keymap.set({ 'i', 'v' }, 'kj', '<Esc>', { noremap = true, silent = true })

-- tab movement
vim.keymap.set({ 'n', 'v' }, 'tn', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'tp', ':tabprevious<CR>', { noremap = true, silent = true })

-- show file tree
vim.keymap.set({ 'n', 'v' }, '<leader>n', ':Neotree toggle<CR>', { desc = "NeoTree", silent = true })

-- get me some files
vim.keymap.set('n', '<C-p>', require('telescope.builtin').find_files, { desc = '[F]ind [F]iles' })

-- pane movement
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})

-- new panes split to the right and below
vim.opt.splitbelow = true -- Open new split below
vim.opt.splitright = true -- Open new split to the right
vim.keymap.set({'n', 'v'}, '<leader>=', '<C-w>=', { desc='[=] Equalize Panes', noremap = true, silent = false })

-- indention
local indent = 2
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.softtabstop = indent
vim.opt.tabstop = indent

-- Beautify HTML, XML, JSON
vim.api.nvim_create_user_command('Thtml', ':%!tidy -q -i -html', {})
vim.api.nvim_create_user_command('Txml',  ':%!tidy -q -i -xml', {})
vim.api.nvim_create_user_command('Tjson', ':%!jq -M --indent 2 .', {})

-- Copilot config
-- -- Copilot keymaps
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', 'kk', 'copilot#Accept("")', { expr = true, silent = true })
vim.keymap.set('i', 'kn', 'copilot#Next()', { expr = true, silent = true })
vim.keymap.set('i', 'kp', 'copilot#Previous()', { expr = true, silent = true })
vim.keymap.set('i', 'kd', 'copilot#Dismiss()', { expr = true, silent = true })
vim.keymap.set('i', '<C-s>', 'copilot#Suggest()', { expr = true, silent = true })
vim.keymap.set("n", "<leader>ps", ':Copilot status<CR>', { desc = "Co[p]ilot [s]tatus", silent = true })
vim.keymap.set("n", "<leader>pd", ':Copilot disable<CR>', { desc = "Co[p]ilot [d]isable" })
vim.keymap.set("n", "<leader>pe", ':Copilot enable<CR>', { desc = "Co[p]ilot [e]nable" })
vim.keymap.set("n", "<leader>pv", ':Copilot version<CR>', { desc = "Co[p]ilot [v]ersion" })
vim.keymap.set("n", "<leader>pp", ':Copilot panel<CR>', { desc = "Co[p]ilot [p]panel" })

-- -- Copilot colors
vim.cmd[[highlight CopilotSuggestion guifg=#67C6F6 gui=italic ctermfg=lightblue cterm=italic]]

-- -- Copilot filetypes
  -- vim.g.copilot_filetypes = {
  --   ["*"] = false,
  --   ["javascript"] = true,
  --   ["typescript"] = true,
  --   ["lua"] = false,
  --   ["rust"] = true,
  --   ["c"] = true,
  --   ["c#"] = true,
  --   ["c++"] = true,
  --   ["go"] = true,
  --   ["python"] = true,
  -- }

-- Add borders for :LspInfo
require('lspconfig.ui.windows').default_options = {
  border = 'rounded'
}
-- Edit this file
-- -- TODO: make this toggle custom config!
vim.keymap.set('n', '<leader>,', ':vs ~/.config/nvim/lua/custom/init.lua<CR>',
  { desc = '[,] Edit Nvim custom config', silent = true })

return {}
