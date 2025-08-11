# 🏜️ Wasteland.nvim

A post-apocalyptic dark theme for Neovim inspired by the wasteland aesthetic.

## Features

- 🎨 Carefully crafted color palette with rust, glow, and ash tones
- 🌳 Full Tree-sitter support
- 🔌 LSP semantic token support
- 📱 Consistent with Omarchy Wasteland theme
- 🚀 Fast loading with minimal overhead

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "perfektnacht/wasteland.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme wasteland]])
  end,
}
