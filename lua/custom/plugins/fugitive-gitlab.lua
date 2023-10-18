return {
  'shumphrey/fugitive-gitlab.vim',
  version = "*",
  lazy = false,
  config = function()
    vim.g.fugitive_gitlab_domains = {'https://gitlab.eu-west-1.mgmt.onfido.xyz/'}
  end,
}
