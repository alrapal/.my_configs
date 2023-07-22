-- [[ File containing all key bindings and remaps]]

-- Set leader key to <space>
vim.g.mapleader = " "

-- Keybind for replacing to place %s/ in the input area
vim.keymap.set("n", '<leader>ro', ':%s/')
