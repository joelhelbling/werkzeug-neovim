# werkzeug-neovim
My neovim config, starting from [nvim-lua/kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).  This repo has a `bauen.yaml` and it can be installed/managed by [werkstatt](https://github.com/joelhelbling/werkstatt).

_Note: this is not a fork, it's just starting from a copy/paste of the above project's `init.lua` --just the way TJ said to do it!_

## my notes from [Effective Neovim: Instant IDE](https://www.youtube.com/watch?v=stqUbv-5u2s)
- `<space>sf` to _fuzzy_ search files
- `:Telescope keymaps` to search for keymappings and see their definitions
- `:Mason` to pick from all the available language servers

## current issues/todos:
- [x] `kj` should escape from `i` and `v` modes
- [x] move between tabs with `tn` and `tp` (yeah, I know, don't judge me for my muscle memory)
- [x] change "Search" to "Find", e.g. `<leader>sf` should be `<leader>ff` --"find files" instead of "search files"
- [x] some sort of file tree should open on `<leader>n`
- [x] not familiar with `vim-sleuth`, and I think I'd rather just default to two spaces
- [x] new panes should open on the right!
- [x] move to next pane with `<C-h>`, `<C-l>`
- [x] install vim-surround
- [x] install plugin to manage sessions (chose 'rmagatti/auto-session')
- [x] I can't seem to shake `ctrl-p` when I want to open a file.  Couldn't we just map that to the same as `<leader>ff`?
- [x] add tpope's endwise plugin
- [x] add syntax support for fish shell
- [x] add markdown plugin --auto bullets, conceal **bold** and _italic_ markup and `<c-k>` in visual mode makes a link!
- [x] install ~~Github Copilot~~ Supermaven
- [ ] add <leader>g* shortcuts to make Git quick and easy, including jumping though change sets, adding them, committing them, and doing interactive rebases

## learning goals
- learn more about Mason
- learn more about Telescope
- learn more about language servers

## original leading comment from stock `init.lua`

This was at the beginning of the copy/pasted `init.lua`.  I want to slim that file down a bit, but don't want to lose those comments (at least for now).

```lua
--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================

Kickstart.nvim is *not* a distribution.

Kickstart.nvim is a template for your own configuration.
  The goal is that you can read every line of code, top-to-bottom, and understand
  what your configuration is doing.

  Once you've done that, you should start exploring, configuring and tinkering to
  explore Neovim!

  If you don't know anything about Lua, I recommend taking some time to read through
  a guide. One possible example:
  - https://learnxinyminutes.com/docs/lua/

  And then you can explore or search through `:help lua-guide`


Kickstart Guide:

I have left several `:help X` comments throughout the init.lua
You should run that command and read that help section for more information.

In addition, I have some `NOTE:` items throughout the file.
These are for you, the reader to help understand what is happening. Feel free to delete
them once you know what you're doing, but they should serve as a guide for when you
are first encountering a few different constructs in your nvim config.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now :)
--]]
```
