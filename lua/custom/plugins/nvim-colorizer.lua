return {
  {
    'catgoose/nvim-colorizer.lua',
    event = 'BufReadPre',
    config = function()
      require('colorizer').setup {
        user_default_options = {
          mode = 'virtualtext',
          sass = { enable = true, parsers = { css = true } }, -- Enable sass colors
        },
      }
    end,
  },
}
