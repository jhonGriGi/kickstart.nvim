return {
  'Shatur/neovim-ayu',
  init = function()
    require('ayu').setup {
      mirage = true,
      terminal = true,
      overrides = {},
    }

    vim.cmd.colorscheme 'ayu'
  end,
}
