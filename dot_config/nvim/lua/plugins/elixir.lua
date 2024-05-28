return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed or {}, {
        'elixir',
        'heex',
        'eex',
      })
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed or {}, {
        'elixir-ls',
      })
    end,
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'jfpedroza/neotest-elixir',
    },
    opts = {
      adapters = {
        ['neotest-elixir'] = {},
      },
    },
    keys = {
      {
        '<leader>tt',
        function()
          require('neotest').run.run(vim.fn.expand '%')
        end,
        desc = 'Run File',
      },
    },
  },
  {
    'nvimtools/none-ls.nvim',
    opts = function(_, opts)
      if vim.fn.executable 'credo' == 0 then
        return
      end
      local nls = require 'null-ls'
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.diagnostics.credo,
      })
    end,
  },
}
