vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- Diagnostic symbols
vim.fn.sign_define("DiagnosticSignError", {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {
      filesystem = {
        hijack_netrw_behavior = "disabled", -- let oil handle int
        window = {
          width = 40,

          mappings = {
            ["r"] = "refresh",
            ["R"] = "rename",
            ["i"] = "open_split",
            ["I"] = "toggle_hidden",

            ["z/"] = "fuzzy_finder",
            ["g/"] = "fuzzy_finder",
            ["/"] = "none",

            -- make h,l navigation work
            ["h"] = "none",
            ["l"] = "none",
          },
        },
        filtered_items = {
          force_visible_in_empty_folder = true,
        },
      },

      filtered_items = {
        window = {
          fuzzy_finder_mappings = {
            -- After g/, these are the default keys to move around
            ["<down>"] = "move_cursor_down",
            ["<C-n>"] = "move_cursor_down",

            ["<up>"] = "move_cursor_up",
            ["<C-p>"] = "move_cursor_up",
          },
        }
      }
    }
  end,
}
