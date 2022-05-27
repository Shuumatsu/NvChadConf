local M = {
    ["kyazdani42/nvim-tree.lua"] = {
        git = {
           enable = true,
        },
        view = {side = "left", width = 20},
    },

    ["lukas-reineke/indent-blankline.nvim"] = {
        filetype_exclude = {
           "help",
           "terminal",
           "alpha",
           "packer",
           "lspinfo",
           "TelescopePrompt",
           "TelescopeResults",
           "nvchad_cheatsheet",
           "lsp-installer",
           "",
        },
        show_current_context = true,
        show_current_context_start = true,
    },

    ["nvim-telescope/telescope.nvim"] = {
        extensions_list = { "themes", "terms", "ui-select" },
    },

    ["goolord/alpha-nvim"] = {
        disable = true,
    },

}

return M
