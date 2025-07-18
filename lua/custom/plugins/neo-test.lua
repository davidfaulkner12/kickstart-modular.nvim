return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/nvim-nio',
      'rouge8/neotest-rust',
    },
    config = function()
      local neotest = require 'neotest'
      neotest.setup {
        adapters = {
          require 'neotest-rust',
        },
      }

      vim.keymap.set('n', '<leader>rt', function()
        neotest.run.run()
      end, { desc = '[R]un [T]est' })
    end,
  },
}
