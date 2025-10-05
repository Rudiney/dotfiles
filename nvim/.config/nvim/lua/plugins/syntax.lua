return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
  },
  {
    'sheerun/vim-polyglot',
    event = { 'BufReadPost', 'BufNewFile' },
  },
  {
    'imsnif/kdl.vim',
    ft = 'kdl',
  },
  {
    'kmoschcau/emmet-vim',
    ft = { 'html', 'eruby', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    init = function()
      -- Trigger Emmet with <Leader>+,
      vim.g.user_emmet_leader_key = '<Leader>'
      -- enable emmet only on Normal and Visual mode
      vim.g.user_emmet_mode = 'nv'
    end,
  },
  {
    'brianhuster/live-preview.nvim',
    ft = { 'markdown', 'md' },
  },
}
