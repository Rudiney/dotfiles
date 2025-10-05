return {
  {
    'nvim-tree/nvim-web-devicons',
    lazy = true,
  },
  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    config = function()
      require('lualine').setup({
        sections = {
          lualine_a = {
            -- display only the first letter of the mode
            { 'mode', fmt = function(str) return str:sub(1, 1) end },
          },
          lualine_b = {
            -- display the last folder of the current working directory:
            function() return vim.fn.fnamemodify(vim.fn.getcwd(), ':t') end
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
    end,
  },
  {
    'akinsho/bufferline.nvim',
    event = 'VeryLazy',
    version = '*',
    config = function()
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
    end,
  },
  {
    'rachartier/tiny-glimmer.nvim',
    event = 'VeryLazy',
    config = function()
      require("tiny-glimmer").setup()
    end,
  },
}
