-- Replace netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- https://prettier.io/docs/vim#neoformat
vim.g.neoformat_try_node_exe = 1

-- General settings
vim.opt.encoding = "utf-8"
vim.opt.ruler = true
vim.opt.showcmd = false
vim.opt.wrap = false
vim.opt.shiftround = true
vim.opt.clipboard = "unnamed"
vim.opt.termguicolors = true

-- Tabstops
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Drawn a line at 120 character mark
vim.opt.textwidth = 120
vim.opt.colorcolumn = "120"

-- Display numbers and relative numbers
vim.opt.number = true
vim.opt.numberwidth = 5
vim.opt.relativenumber = true

-- Open new split panes to right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Highlight the current line
vim.opt.cursorline = true

-- Folding using identation
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 10
-- vim.opt.foldlevelstart = 2

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Save undo history
vim.opt.undofile = true

-- Set the default border for all floating windows
vim.opt.winborder = 'rounded'

vim.diagnostic.config {
  virtual_text = false,
  float = {
    header = false,
    border = 'rounded',
    focusable = true,
  },
}
