return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    build = ':MasonUpdate',
    config = function()
      require("mason").setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = { 'williamboman/mason.nvim' },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rubocop", "ruby_lsp", "ts_ls" },
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')

      lspconfig.lua_ls.setup { capabilities = capabilities }
      lspconfig.rubocop.setup { capabilities = capabilities }
      lspconfig.ts_ls.setup { capabilities = capabilities }
      lspconfig.ruby_lsp.setup {
        capabilities = capabilities,
        init_options = {
          enablePendingMigrationsPrompt = false,
          formatter = 'standard',
          linters = { 'standard' },
          addonSettings = {
            ["Ruby LSP Rails"] = {
              enablePendingMigrationsPrompt = false,
            },
          },
        },
      }
    end,
  },
}
