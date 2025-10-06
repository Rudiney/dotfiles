return {
  {
    'saghen/blink.cmp',
    version = '1.*',
    opts = {
      keymap = {
        preset = 'none',
        ['<C-n>'] = { 'show', 'select_next', 'fallback' },
        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },
        ['<Tab>'] = { 'select_and_accept', 'fallback' },
      },
      completion = {
        menu = { auto_show = false },
        documentation = { auto_show = false }
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = "lua" }
    },
    opts_extend = { "sources.default" }
  }
}
