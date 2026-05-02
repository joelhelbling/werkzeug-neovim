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
        keymaps = {
          accept_suggestion = "<C-l>",
        },
        color = {
          suggestion_color = "#67C6F6",
          cterm = 244,
        }
      })
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false
  },
  {
    "coder/claudecode.nvim",
    config = true,
    keys = {
      { "<leader>c", nil, desc = "AI/Claude Code" },
      { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
      { "<leader>cr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
      { "<leader>cC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>cs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
      {
        "<leader>zz",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree" },
      },
    },
  },
  'tpope/vim-endwise',
  'dag/vim-fish',
  'ixru/nvim-markdown',
}
