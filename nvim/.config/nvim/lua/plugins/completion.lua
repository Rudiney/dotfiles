return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'dcampos/nvim-snippy',
      'dcampos/cmp-snippy',
      'FelipeLema/cmp-async-path',
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require('snippy').expand_snippet(args.body)
          end,
        },
        completion = {
          autocomplete = false,
        },

        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },

        mapping = cmp.mapping.preset.insert({
          ['<C-Space>'] = cmp.mapping.complete(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),

        sources = cmp.config.sources({
          { name = 'buffer' },
          { name = 'async_path' },
          { name = 'nvim_lsp' },
        })
      })
    end,
  },
  {
    'hrsh7th/cmp-buffer',
    lazy = true,
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    lazy = true,
  },
  {
    'dcampos/cmp-snippy',
    lazy = true,
  },
  {
    'FelipeLema/cmp-async-path',
    lazy = true,
  },
  {
    'dcampos/nvim-snippy',
    lazy = true,
  },
}
