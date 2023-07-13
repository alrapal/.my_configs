-- [[ File containing all key bindings and remaps]]

-- Set leader key to <space> 
vim.g.mapleader = " "

 -- Bind the space + p to the :Ex function. 
 -- p = project
 vim.keymap.set("n", "<leader>p", vim.cmd.Ex)
