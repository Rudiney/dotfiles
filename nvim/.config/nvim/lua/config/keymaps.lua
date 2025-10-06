-- Some cool inspiration from: https://medium.com/unixification/must-have-neovim-keymaps-51c283394070


-- Handy save & quit shortcuts with <Leader> + s and <Leader> + q
vim.keymap.set("n", "<Leader>s", ":w<CR>")
vim.keymap.set("n", "<Leader>q", ":q<CR>")

-- Open a vsplit with <Leader>+t
vim.keymap.set("n", "<Leader>t", ":vsp<CR>")

-- Move a line down with option + j
vim.keymap.set("n", "∆", ":m .+1<CR>==")
vim.keymap.set("i", "∆", "<Esc>:m .+1<CR>==gi")

-- Move a line up with option + k
vim.keymap.set("n", "˚", ":m .-2<CR>==")
vim.keymap.set("i", "˚", "<Esc>:m .-2<CR>==gi")

-- Move whole selection up and down with option + k and j
vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv")

-- Indent and Outdent with > and <
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- use Ctrl + hjkl to move between windows
vim.keymap.set({ "n", "v", "i" }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n", "v", "i" }, "<C-k>", "<C-w>k")
vim.keymap.set({ "n", "v", "i" }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n", "v", "i" }, "<C-l>", "<C-w>l")

-- Find current file in tree with <Leader>+n (now handled by lazy.nvim keys)

-- Rubocop shortcuts
vim.keymap.set("n", "<Leader>r", ":!rubocop % <CR>")
vim.keymap.set("n", "<Leader>R", ":!rubocop -A % <CR>")

-- Open lazygit with <Leader>gg (now handled by lazy.nvim keys)

-- Test Runner: (now handled by lazy.nvim in testing.lua)


-- LSP:
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>p', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>P', ":Neoformat<CR>")
vim.keymap.set('n', '<leader>dh', vim.diagnostic.hide)
vim.keymap.set('n', '<leader>ds', vim.diagnostic.show)
vim.keymap.set('n', '<leader>dd', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float)

-- ERB tags shortcuts (this is bugged: https://github.com/windwp/nvim-autopairs/wiki/Endwise)
vim.keymap.set('i', '<C-=>', '<%=  %><Left><Left><Left>')
vim.keymap.set('i', '<C-->', '<%  %><Left><Left><Left>')

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

