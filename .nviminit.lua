local lsp = require 'lsp-zero'


lsp.configure('gopls', {
    settings = {
        gopls = {
            buildFlags = { "-tags=wasm,js" }
        }
    }
})
