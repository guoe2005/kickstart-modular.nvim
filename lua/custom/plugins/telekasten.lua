return {
  'renerocksai/telekasten.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('telekasten').setup {
      home = vim.fn.expand '~/.config/nvim/telekasten', -- Put the name of your notes directory here
    }
  end,
}
