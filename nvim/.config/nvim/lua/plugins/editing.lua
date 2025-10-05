return {
  {
    'tpope/vim-sensible',
  },
  {
    'tpope/vim-commentary',
    event = 'VeryLazy',
  },
  {
    'tpope/vim-surround',
    event = 'VeryLazy',
  },
  {
    'tpope/vim-repeat',
    event = 'VeryLazy',
  },
  {
    'tpope/vim-endwise',
    event = 'InsertEnter',
  },
  {
    'svermeulen/vim-cutlass',
    event = 'VeryLazy',
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require("nvim-autopairs").setup()
    end,
  },
}
