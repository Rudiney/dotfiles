return {
  {
    'github/copilot.vim',
    event = 'InsertEnter',
  },
  {
    'greggh/claude-code.nvim',
    config = function()
      require("claude-code").setup()
    end,
  },
}
