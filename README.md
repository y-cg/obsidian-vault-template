A simple but just enough [Obsidian](https://obsidian.md/) vault setup that puts content first.

> "Stop configuring your vault. Start focusing on the content."

# Appearance

## Fonts

- Interface Font: Avenir Next (parts of macOS builtin fonts)
- Editor Font: Avenir Next
- Monospace Font: [Iosevka](https://github.com/be5invis/Iosevka)

## Reminder

The appearance is optimize for my own display (27 inch 4k display with 2540 x 1440 resolution). The setup might not suit you if you have different size of screen. Also, the `zoom factor` should be set to `120%` to get exactly same visual appearance (since obsidian does not support persist `zoom factor` yet).

# Security Risk

Plugin `data.json` files usually contain configuration but can also include secrets. These plugin directories are ignored by default but can be opted in, so check any `plugins/*/data.json` files you plan to commit and remove secrets (tokens, keys, passwords) first.
