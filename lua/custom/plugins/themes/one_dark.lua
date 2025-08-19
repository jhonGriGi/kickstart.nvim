return {
  'olimorris/onedarkpro.nvim',
  priority = 1000, -- Ensure it loads fi
  config = function()
    vim.cmd 'colorscheme onedark_vivid'
  end,
}
