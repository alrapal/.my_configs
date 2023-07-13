# NeoVim Configuration

This is my personal `NeoVim` configuration using `lua`.

It is inspired greatly out of: 

- [ThePrimeagen](https://github.com/ThePrimeagen/init.lua) for the setup
- [cpow](https://github.com/cpow/cpow-dotfiles) for the structure 
- [feoh](https://github.com/nvim-lua/kickstart.nvim) and the use of lazy.nvim 

## Plugins

Plugin manager is [Lazy.nvim](https://github.com/folke/lazy.nvim)

|Plugin|Description|
|---|---|
|[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)|Language Highlighting Tool|
|[LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim)|LSP manager - uses [Mason](https://github.com/williamboman/mason.nvim)|
|[Telescope](https://github.com/nvim-telescope/telescope.nvim)|Fuzzy finder|
|[UndoTree](https://github.com/mbbill/undotree)|History of changes made in a file|
|[vim-fugitive](https://github.comi/tpope/vim-fugitve)| Git visualiser |
|[NvimTree](https://github.com/nvim-tree/nvim-tree.lua)|File explorer|
## Keybinding summary

|Key|Function|Toughts|
|---|---|---|
|**Main**|-|-|
|`Space`|Leader key||
|`Space + q`| Tree view| easy layout |
|`Space + a`| Focus Tree view|a under q|
|**Telescope**|-|-|
|`Space + p + f`|Fuzzy search in files|pf = project files|
|`Space + g + f`|Fuzzy search in git files|gf = git files|
|`Space + s`|Initialise `Grep` command|ps = project search|
|`Space + f + f`|Format the file using LSP from LSPZero|ff = Format File|
|`Space + s + b`|Show the opened buffer in the nvim instance|sb = Show Buffe|

## Install LSP

To install a new LSP:

1. Open a file
2. Run `:LspInstall` to get a list of available LSPs for the file type
3. Install following the provided prompt instructions

