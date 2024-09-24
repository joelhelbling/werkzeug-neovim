-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  { 'kylechui/nvim-surround', opts = {} },
  { 'rmagatti/auto-session',
    opts = {
      log_level = 'error',
      auto_session_suppress_dirs = {
        '~/', '~/code', '~/Downloads', '/'
      }
    }
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    version = 'v2.x',
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        color = {
          suggestion_color = "#67C6F6",
          cterm = 244,
        }
      })
    end,
  },
  'tpope/vim-endwise',
  'dag/vim-fish',
  'ixru/nvim-markdown',
  -- 'github/copilot.vim',
  'joshuavial/aider.nvim'
}
