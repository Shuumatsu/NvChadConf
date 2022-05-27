local M = {}

M.ui = {
     theme = "gruvchad",
}

M.plugins = {
    override = require "custom.override",

    user = require "custom.plugins",

    options = {
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig",
        },
    }
}

M.mappings = require "custom.mappings"

return M
