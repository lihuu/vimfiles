# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a cross-platform Vim/Neovim configuration repository supporting Vim 9, Neovim (via LazyVim), and GUI variants (Neovide, Neovim-qt, MacVim).

## Configuration Architecture

### Dual Config Systems

- **Vim 9 / classic Vim**: `vimrc` (entry point) sources `plugins.vim` (vim-plug plugin list) and `vimrc9.vim` (Vim 9 script settings, keymaps, autocmds)
- **Neovim (LazyVim)**: `init.lua` bootstraps lazy.nvim via `lua/config/lazy.lua`, which imports LazyVim extras and local plugins from `lua/plugins/`

### Key Files

| File | Purpose |
|------|---------|
| `vimrc` | Vim 9 entry point, loads `plugins.vim` + `vimrc9.vim` |
| `vimrc9.vim` | Vim 9 settings, keymaps, filetype config, F5 compile/run, NERDTree, FZF, coc.nvim integration |
| `plugins.vim` | vim-plug plugin declarations (~50 plugins) |
| `init.lua` | Neovim entry point, loads lazy.nvim + Neovide config |
| `lua/config/lazy.lua` | LazyVim plugin spec imports (TypeScript, Vue, Python, Go, Rust, Docker, etc.) |
| `lua/plugins/*.lua` | Custom Neovim plugin overrides (LSP, UI, markdown, dashboard) |
| `lua/config/keymaps.lua` | Neovim keymap additions |
| `lua/config/autocmds.lua` | Neovim autocmds (auto-reload, yank highlight, resize, etc.) |
| `lua/core/global.lua` | Cross-platform OS detection variables |
| `gvimrc` / `ginit.vim` | GUI Vim (MacVim / Neovim-qt) settings |
| `coc-settings.json` / `coc-config.vim` | coc.nvim LSP configuration |
| `colors/*.vim` | Custom color schemes (onedark, molokai, monokai_pro, landscape) |

### Plugin Management

- **Vim**: vim-plug (`PlugInstall`, `PlugUpdate`, `PlugClean`)
- **Neovim**: lazy.nvim (`:Lazy sync`, `:Lazy update`, `:Lazy clean`)

### Common Tasks

- **Install Vim plugins**: Open vim and run `:PlugInstall`
- **Install Neovim plugins**: Open nvim and run `:Lazy sync`
- **Format Lua code**: Uses StyLua (configured in `stylua.toml`); autocmd in `vimrc9.vim` runs on `.lua` save
- **Debug startup time**: `vim --startuptime startuptime.log` or run `:StartupTime` / `:ShowScriptnames`

### Dependencies

- **Node.js**: Required for coc.nvim
- **fzf**: `~/.fzf/install` (Linux/Mac) or `scoop install fzf` (Windows)
- **Nerd Fonts**: BlexMono Nerd Font used across configs
- **LuaFormatter**: `luarocks install --server=https://luarocks.org/dev luaformatter`

### Language Support

LSP servers managed via Mason (Neovim): gopls, pyright, typescript-language-server, vue-language-server, lua-language-server, yaml-language-server, tailwindcss, eslint, prettier, marksman, docker-compose-ls, vim-language-server, ruff, etc.

### Legacy

The `nvim-old/` directory contains a previous Neovim config using packer.nvim. It is no longer active. The `backup/` directory holds old `init.vim` snapshots.
