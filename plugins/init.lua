local M = {    
    ["elkowar/yuck.vim"] = { ft = "yuck" },

    ["NvChad/nvterm"] = {
        config = function()
            require "plugins.configs.nvterm"
        end
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
           require "custom.plugins.null-ls"
        end,
    },

    ["windwp/nvim-ts-autotag"] = {
        ft = { "html", "javascriptreact" },
        after = "nvim-treesitter",
        config = function()
           local present, autotag = pcall(require, "nvim-ts-autotag")

           if present then
              autotag.setup()
           end
        end,
    },

    ["nvim-telescope/telescope-ui-select.nvim"] = {
        after = "telescope",
    },

    ["karb94/neoscroll.nvim"] = {
        config = function()
           require("neoscroll").setup()
        end,
 
        -- lazy loading
        setup = function()
          nvchad.packer_lazy_load "neoscroll.nvim"
        end,
 },

    ["Pocco81/AutoSave.nvim"] = {
        config = function()
           local autosave = require "autosave"
     
           autosave.setup {
              enabled = true,
              execution_message = "autosaved at : " .. vim.fn.strftime "%H:%M:%S",
              events = { "InsertLeave", "TextChanged" },
              conditions = {
                 exists = true,
                 filetype_is_not = {},
                 modifiable = true,
              },
              clean_command_line_interval = 2500,
              on_off_commands = true,
              write_all_buffers = false,
           }
        end,
     },

     ["nvim-telescope/telescope-media-files.nvim"] = {
        after = "telescope.nvim",
        config = function()
           require("telescope").setup {
              extensions = {
                 media_files = {
                    filetypes = { "png", "webp", "jpg", "jpeg" },
                    find_cmd = "rg", -- find command (defaults to `fd`)
                 },
              },
           }
           require("telescope").load_extension "media_files"
        end,
    },

    ["goolord/alpha-nvim"] = {
        disable = true,
    },
}

return M

