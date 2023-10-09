return {
  'jpalardy/vim-slime',
  version = "*",
  lazy = false,
  config = function()
    vim.g.slime_target = 'tmux'
  end
}
