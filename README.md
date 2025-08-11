# Wasteland.nvim

A post-apocalyptic dark theme for Neovim inspired by the wasteland aesthetic.

## Features

- **Carefully crafted color palette** with rust, glow, and ash tones
- **Full Tree-sitter support** for modern syntax highlighting
- **LSP semantic token support** for enhanced code intelligence
- **Consistent with Omarchy Wasteland theme** for unified desktop experience
- **Fast loading** with minimal overhead

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
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'perfektnacht/wasteland.nvim',
  config = function()
    vim.cmd([[colorscheme wasteland]])
  end
}
```

### Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/perfektnacht/wasteland.nvim ~/.config/nvim/pack/themes/start/wasteland.nvim
```

2. Add to your `init.lua`:
```lua
vim.cmd([[colorscheme wasteland]])
```

## Usage

```lua
-- Basic usage
vim.cmd([[colorscheme wasteland]])

-- Or with setup function
require('wasteland').setup({
  -- Configuration options here
})
```

## Color Palette

| Color | Hex | Description |
|-------|-----|-------------|
| Base | `#1b1b1b` | Soot (background) |
| Text | `#d1d0c5` | Bone ash (foreground) |
| Rust | `#9e3b26` | Rust red (keywords) |
| Glow | `#c5d977` | Radioactive glow (functions) |
| Burnt | `#c75c36` | Burnt orange (constants) |
| Olive | `#7da453` | Olive (strings) |
| Steel | `#2d3e4e` | Weathered steel (UI elements) |
| Ash | `#5c5c5c` | Ash gray (comments) |

## Related Projects

This theme is part of the complete [Omarchy Wasteland Theme](https://github.com/perfektnacht/omarchy-wasteland-theme) which provides consistent styling across your entire desktop environment.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

MIT License
