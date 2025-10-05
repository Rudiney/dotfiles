return {
  {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('dracula').setup({
        colors = {
          -- File names in explorer was too transparent
          nontext = "#A4A6A6",
        },
      })
      vim.cmd("colorscheme dracula")
    end,
  },
}
