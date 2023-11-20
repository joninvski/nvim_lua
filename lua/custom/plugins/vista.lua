return {
  'liuchengxu/vista.vim',
  version = "*",
  lazy = false,
  config = function()
    vim.keymap.set('n', '<f4>', ':Vista!!<cr>')
  end
}
