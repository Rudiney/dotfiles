return {
  {
    'kdheepak/lazygit.nvim',
    cmd = 'LazyGit',
    keys = {
      { '<Leader>gg', ':LazyGit<CR>', desc = 'Open LazyGit' },
    },
  },
  {
    'vim-test/vim-test',
    keys = {
      { '<F9>', ':TestFile<CR>', mode = { 'n', 'v', 'i' }, desc = 'Run test file' },
      { '<F10>', ':TestNearest<CR>', mode = { 'n', 'v', 'i' }, desc = 'Run nearest test' },
    },
    init = function()
      -- Setting the test runner as 'm' to run the test with minitest
      vim.g['test#ruby#minitest#executable'] = 'm'
      -- use spring to run rspec specs
      vim.g['test#ruby#rspec#executable'] = 'bin/spring rspec'
    end,
  },
  {
    'sbdchd/neoformat',
    cmd = 'Neoformat',
    keys = {
      { '<leader>P', ':Neoformat<CR>', desc = 'Format with Neoformat' },
    },
  },
  {
    'stevearc/quicker.nvim',
    event = 'FileType qf',
    config = function()
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
    end,
  },
}
