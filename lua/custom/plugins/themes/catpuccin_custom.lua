return {
  'catppuccin/nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      integrations = {
        blink_cmp = true,
        fidget = true,
        gitsigns = true,
        harpoon = true,
        indent_blankline = {
          enabled = false,
          scope_color = 'sapphire',
          colored_indent_levels = false,
        },
        mason = true,
        native_lsp = { enabled = true },
        noice = true,
        notify = true,
        symbols_outline = true,
        snacks = {
          enabled = true,
          indent_scope_color = 'mauve',
        },
        telescope = true,
        treesitter = true,
        treesitter_context = true,
      },
    }
    local palette = require('catppuccin.palettes').get_palette 'macchiato'

    vim.cmd.colorscheme 'catppuccin-macchiato'

    vim.api.nvim_set_hl(0, 'BlinkCmpMenu', { bg = palette.base })
    vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', { fg = palette.blue })
    vim.api.nvim_set_hl(0, 'BlinkCmpDoc', { bg = palette.base })
    vim.api.nvim_set_hl(0, 'BlinkCmpDocBorder', { fg = palette.blue })
    vim.api.nvim_set_hl(0, 'BlinkCmpSignatureHelp', { bg = palette.base })
    vim.api.nvim_set_hl(0, 'BlinkCmpSignatureHelpBorder', { fg = palette.blue })
    vim.api.nvim_set_hl(0, 'BlinkCmpDocSeparator', { fg = palette.blue, bg = palette.base })
    vim.api.nvim_set_hl(0, 'BlinkCmpGhostText', { fg = palette.overlay2 })

    -- Telescope highlights to match editor background
    vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = palette.base })
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = palette.blue, bg = palette.base })
    vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = palette.base })
    vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = palette.blue, bg = palette.base })
    vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = palette.base })
    vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = palette.blue, bg = palette.base })
    vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = palette.base })
    vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = palette.blue, bg = palette.base })

    -- Hide all semantic highlights until upstream issues are resolved (https://github.com/catppuccin/nvim/issues/480)
    for _, group in ipairs(vim.fn.getcompletion('@lsp', 'highlight')) do
      vim.api.nvim_set_hl(0, group, {})
    end
  end,
}
