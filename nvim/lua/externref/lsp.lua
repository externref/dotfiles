local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({'pyright', 'tsserver', 'rust_analyzer', 'sumneko_lua'})
lsp.setup()
