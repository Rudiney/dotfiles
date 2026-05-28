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
    dependencies = { 
      'nvim-lua/plenary.nvim', {
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        version = "^1.1.0",
      }
    },
    cmd = 'Telescope',
    keys = {
      { '<Leader>y', function() require('telescope.builtin').find_files() end, desc = 'Find files' },
      { '<Leader>Y', function() require('telescope.builtin').oldfiles() end, desc = 'Find recent files' },
      { '<Leader>f', function() require('telescope').extensions.live_grep_args.live_grep_args() end, desc = 'Live grep' },
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
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top",
          },
          mappings = {
            i = {
              -- map <C-q> to send selected to quickfix list and open it
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
              -- navigate throught history for commands
              ["<C-Down>"] = actions.cycle_history_next,
              ["<C-Up>"] = actions.cycle_history_prev,
            },
            n = {
              -- map <C-q> to send selected to quickfix list and open it
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

      telescope.load_extension("live_grep_args")
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
