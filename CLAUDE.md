# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A personal neovim configuration based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). Managed by [werkstatt](https://github.com/joelhelbling/werkstatt) — the `bauen.yaml` symlinks this entire repo to `~/.config/nvim`.

## Architecture

**Entry point:** `init.lua` — sets leader key, bootstraps lazy.nvim, declares all plugin specs, then configures settings, keymaps, Telescope, Treesitter, LSP (via Mason), and completion (nvim-cmp + LuaSnip).

**Custom config:** `lua/custom/init.lua` — personal keymaps, options (2-space tabs, split behavior), and custom commands (`:Thtml`, `:Txml`, `:Tjson`). Loaded last via lazy.nvim's `{ import = 'custom' }`.

**Custom plugins:** `lua/custom/plugins/init.lua` — additional plugin specs (neo-tree, aider.nvim, supermaven, etc.) loaded via `{ import = 'custom.plugins' }`.

**Plugin management:** lazy.nvim with lockfile (`lazy-lock.json`). Core plugins are declared inline in `init.lua`; extras go in `lua/custom/plugins/init.lua`.

## Key Conventions

- **Leader key:** Space
- **Indentation:** 2 spaces (set in `lua/custom/init.lua`)
- **Escape:** `kj` mapped in insert and visual modes
- **Window navigation:** `<C-h/j/k/l>` to move between panes
- **File finder:** Both `<leader>ff` and `<C-p>` open Telescope find_files
- **File tree:** `<leader>n` toggles NeoTree

## Applying and Testing Changes

There is no build step. To test changes:
- Restart neovim to reload the config
- `:Lazy sync` to install/update/remove plugins after changing specs
- `:Lazy` to view plugin status
- `:checkhealth` to diagnose issues
- `:Mason` to manage language servers
