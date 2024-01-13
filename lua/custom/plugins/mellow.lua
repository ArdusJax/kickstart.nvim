return {
 'mellow-theme/mellow.nvim',
  name = 'mellow',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'mellow'
  end,
}
