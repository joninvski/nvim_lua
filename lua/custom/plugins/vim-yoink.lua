return {
  "svermeulen/vim-yoink",
  lazy = false,
  version = "*",
  config = function()
    vim.keymap.set('n', '<c-p>', '<plug>(YoinkPostPasteSwapBack)', { desc = 'Previous item on clipboard'})
    vim.keymap.set('n', '<c-n>', '<plug>(YoinkPostPasteSwapForward)', { desc = 'Next item on clipboard'})

    vim.keymap.set('n', 'p', '<plug>(YoinkPaste_p)', { desc = 'Paste'})
    vim.keymap.set('n', 'P', '<plug>(YoinkPaste_p)', { desc = 'Paste'})

    vim.g.yoinkSavePersistently = '1'
    vim.g.yoinkIncludeDeleteOperations = '1'
  end
}

