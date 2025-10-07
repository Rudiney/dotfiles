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
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    keys = {
      { '<Leader>y', function() require('telescope.builtin').find_files() end, desc = 'Find files' },
      { '<Leader>Y', function() require('telescope.builtin').oldfiles() end, desc = 'Find recent files' },
      { '<Leader>f', function() require('telescope.builtin').live_grep() end, desc = 'Live grep' },
      { '<Leader>b', function() require('telescope.builtin').buffers() end, desc = 'Find buffers' },
      { '<Leader>gs', function() require('telescope.builtin').git_status() end, desc = 'Git status' },
      { '"', function() require('telescope.builtin').registers() end, desc = 'Open registers' },
      { '<Leader>m', function() require('telescope.builtin').marks() end, desc = 'Find marks' },
      { '<Leader>d', function() require('telescope.builtin').diagnostics({ bufnr = 0 }) end, desc = 'Buffer diagnostics' },
      { '<Leader>D', function() require('telescope.builtin').diagnostics() end, desc = 'Workspace diagnostics' },
      { '<Leader>Q', function() require('telescope.builtin').quickfix() end, desc = 'Open quickfix list' },
    },
    config = function()
      local actions = require('telescope.actions')
      require('telescope').setup({
        defaults = {
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top",
          },
          mappings = {
            -- In normal and insert mode, map <C-q> to send selected to quickfix list and open it
            i = {
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
            n = {
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        },
        pickers = {
          find_files = {
            find_command = { "rg", "--files", "--sortr", "accessed" },
          },
        },
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
