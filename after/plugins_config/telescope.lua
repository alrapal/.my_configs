local builtin = require('telescope.builtin')
-- pf -> project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- gf -> git files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
-- Custom function -> uses the telescope grep function and insert it into the input
vim.keymap.set('n', '<leader>ps', function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
