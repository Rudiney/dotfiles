return {
  {
    'nvim-tree/nvim-tree.lua',
    cmd = { 'NvimTreeToggle', 'NvimTreeFindFile' },
    keys = {
      { '<Leader>n', ':NvimTreeFindFile<CR>', desc = 'Find current file in tree' },
    },
    config = function()
      require('nvim-tree').setup({
        update_cwd = true,
        actions = {
          open_file = {
            quit_on_open = true
          }
        }
      })
    end,
  },
  {
    'ibhagwan/fzf-lua',
    cmd = 'FzfLua',
    keys = {
      { '<Leader>y', function() require('fzf-lua').files() end, desc = 'Find files' },
      { '<Leader>Y', function() require('fzf-lua').oldfiles() end, desc = 'Find recent files' },
      { '<Leader>f', function() require('fzf-lua').live_grep() end, desc = 'Live grep' },
      { '<Leader>b', function() require('fzf-lua').buffers() end, desc = 'Find buffers' },
      { '<Leader>gs', function() require('fzf-lua').git_status() end, desc = 'Git status' },
      { '"', function() require('fzf-lua').registers() end, desc = 'Open registers' },
      { '<Leader>m', function() require('fzf-lua').marks() end, desc = 'Find marks' },
      { '<Leader>d', function() require('fzf-lua').lsp_document_diagnostics() end, desc = 'Buffer diagnostics' },
      { '<Leader>D', function() require('fzf-lua').lsp_workspace_diagnostics() end, desc = 'Workspace diagnostics' },
    },
    config = function()
      require('fzf-lua').setup({
        "hide",
        files = { rg_opts = "--sort=accessed --color=never --files --glob !*.rbi" },
        live_grep = { rg_opts = "--glob '!*.rbi'" }
      })
    end,
  },
  {
    'pechorin/any-jump.vim',
    cmd = { 'AnyJump', 'AnyJumpBack' },
    keys = {
      { '<Leader>j', ':AnyJump<CR>', desc = 'Go to definition (AnyJump)' },
    },
  },
  {
    'markstory/vim-zoomwin',
    keys = { '<Leader>z' },
  },
}
