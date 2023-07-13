local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

vim.keymap.set("n", "<leader>ff", vim.cmd.LspZeroFormat)
