-- Theme
-- require('monokai').setup { palette = require('monokai').soda }
-- require('new-railscasts-theme').setup()
-- vim.cmd("color monokai")
-- vim.cmd("colorscheme new-railscasts")

require('dracula').setup({
  colors = {
    -- File names in explorer was too transparent
    nontext = "#A4A6A6",
  },
})

vim.cmd("colorscheme dracula")
