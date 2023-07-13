-- [[ File containing all key bindings and remaps]]

-- Set leader key to <space>
vim.g.mapleader = " "

-- telescope mapping
local builtin = require('telescope.builtin')
-- pf -> project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- gf -> git files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
-- Show buffers 
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
