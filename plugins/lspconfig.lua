local lspconfig = require "lspconfig"

local M = {}

local servers = { "html", "cssls", "bashls", "tsserver", "clangd", "rust_analyzer", "cmake", "hls", "ocamlls" }

M.setup_lsp = function(attach, capabilities)
    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
        }
    end
end

return M