return {
  'craftzdog/solarized-osaka.nvim',
  lazy = true,
  priority = 1000,
  opts = function()
    return {
      transparent = false,
    }
  end,
  init = function()
    vim.cmd.colorscheme 'solarized-osaka'
  end,
}
