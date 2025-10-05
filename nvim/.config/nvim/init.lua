require('config.globals')
require('config.plugins')
require('config.options')
require('config.keymaps')
require('config.colorscheme')

-------- START: plugins config:

-- NvimTree
require('nvim-tree').setup({
  update_cwd = true,
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})

--quicker
require("quicker").setup({
  keys = {
    {
      ">",
      function()
        require("quicker").expand({ before = 2, after = 2, add_to_existing = true })
      end,
      desc = "Expand quickfix context",
    },
    {
      "<",
      function()
        require("quicker").collapse()
      end,
      desc = "Collapse quickfix context",
    },
  },
})

require("tiny-glimmer").setup()

FzfLua = require('fzf-lua')
FzfLua.setup({
  "hide",
  files = { rg_opts = "--sort=accessed --color=never --files --glob !*.rbi" },
  live_grep = { rg_opts = "--glob '!*.rbi'" }
})

-- Status line
require('lualine').setup({
  sections = {
    lualine_a = {
      -- display only the first letter of the mode
      { 'mode', fmt = function(str) return str:sub(1, 1) end },
    },
    lualine_b = {
      -- display the last folder of the current working directory:
      function() return vim.fn.fnamemodify(vim.fn.getcwd(), ':t') end

      -- display only the first 9 letters of the branch
      -- { 'branch', fmt = function(str) return str:sub(1, 9) end },
    },
    lualine_c = {
      {
        'filename',
        file_status = true,
        newfile_status = false,
        path = 1,
      }
    },
    lualine_x = { 'filetype' },
    lualine_y = {},
  },
  inactive_sections = {
    lualine_c = {
      {
        'filename',
        file_status = true,
        newfile_status = false,
        path = 1,
      }
    },
    lualine_x = {}
  }
})

-- require("copilot").setup({
--   suggestion = {
--     auto_trigger = true,
--     keymap = {
--       accept = "<TAB>",
--       reject = "<ESC>",
--     }
--   }
-- })

require("nvim-autopairs").setup()

-- Emmet
--- Trigger Emmet with <Leader>+,
vim.g.user_emmet_leader_key = '<Leader>'
--- enable emmet only on Normal and Visual mode
vim.g.user_emmet_mode = 'nv'


--  Bufferline
require("bufferline").setup({
  options = {
    mode = "tabs",
    offsets = {
      filetype = "NvimTree",
      text = "File Explorer",
      text_align = "left",
      separator = true
    }
  }
})

-- LSPs stuff
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rubocop", "ruby_lsp", "ts_ls" },
})

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

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup { capabilities = capabilities }
-- lspconfig.biome.setup { capabilities = capabilities }
-- lspconfig.solargraph.setup { capabilities = capabilities }
lspconfig.rubocop.setup { capabilities = capabilities }
-- lspconfig.standardrb.setup { capabilities = capabilities }
-- lspconfig.eslint.setup { capabilities = capabilities }
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
-- lspconfig.prettier.setup { capabilities = capabilities }
-- lspconfig.sorbet.setup { capabilities = capabilities }

require("claude-code").setup()

-- BufferSticks = require("buffer-sticks");
-- BufferSticks.setup({
--   highlights = {
--     inactive = '#969696'
--   }
-- })
-- BufferSticks.show()
-- vim.keymap.set('n', '<Leader>b', BufferSticks.toggle, {})
