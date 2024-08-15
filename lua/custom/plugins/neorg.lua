return {
  'nvim-neorg/neorg',
  lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
  version = '*', -- Pin Neorg to the latest stable release
  -- config = true,
  config = function()
    require('neorg').setup {
      load = {
        ['core.concealer'] = {},
        ['core.ui'] = {},
        ['core.ui.calendar'] = {},
        ['core.journal'] = {},
        ['core.completion'] = {
          config = {
            engine = 'nvim-cmp',
          },
        },
        ['core.defaults'] = {},
        ['core.keybinds'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/notes',
            },
          },
        },
      },
    }
  end,
}
