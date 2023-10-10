return {
  'simnalamburt/vim-mundo',
  version = "*",
  lazy = false,
  config = function()
    vim.o.undofile = true
    vim.o.undodir = '~/.vim.undo'
  end
}
