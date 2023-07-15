local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })

    vim.keymap.set("n", "<leader>ff", vim.cmd.LspZeroFormat)
end)

lsp.setup()

-- Use cpm to remap the acceptance of completion using enter
local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }
})
