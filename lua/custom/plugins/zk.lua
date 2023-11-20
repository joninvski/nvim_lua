local opts = { noremap=true, silent=false }
vim.api.nvim_set_keymap("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>zO", "<Cmd>Telescope live_grep search_dirs={'~/my-notes'}<CR>", opts)

return {
  "mickael-menu/zk-nvim",
  lazy = false,
  version = "*",
  config = function()
    require("zk").setup({
      -- See Setup section below
      picker = "telescope",
      lsp = {
        -- `config` is passed to `vim.lsp.start_client(config)`
        config = {
          cmd = { "zk", "lsp" },
          name = "zk",
          -- on_attach = ...
          -- etc, see `:h vim.lsp.start_client()`
        },

        -- automatically attach buffers in a zk notebook that match the given filetypes
        auto_attach = {
          enabled = true,
          filetypes = { "markdown" },
        },
      },
    })
  end
}
