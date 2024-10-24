local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
	function(server_name)
	    require('lspconfig')[server_name].setup({})
	end,
    },
})

local cmp = require('cmp')

local key_map = cmp.mapping.preset.insert({
    -- confirm completion
    ['<C-y>'] = cmp.mapping.confirm({select = true}),

    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
})


cmp.setup({
    sources = {
	{name = 'nvim_lsp'},
	{name = 'buffer'},
    },
    --- (Optional) Show source name in completion menu
    formatting = cmp_format,
    mapping = key_map
})
