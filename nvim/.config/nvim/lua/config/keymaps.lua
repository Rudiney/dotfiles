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

-- Find current file in tree with <Leader>+n
vim.keymap.set("n", "<Leader>n", ":NvimTreeFindFile<CR>")

FzfLua = require('fzf-lua')
--- Find files with <Leader>+y
vim.keymap.set('n', '<Leader>y', FzfLua.files)

--- Find Recent files with <Leader>+Y
vim.keymap.set('n', '<Leader>Y', FzfLua.oldfiles)

--- Live grep with <Leader>+f
vim.keymap.set('n', '<Leader>f', FzfLua.live_grep)

--- buffers with <Leader>+b
vim.keymap.set('n', '<Leader>b', FzfLua.buffers)

--- Git modified files with <Leader>+g
vim.keymap.set('n', '<Leader>gs', FzfLua.git_status)

--- " to open registers
vim.keymap.set('n', '"', FzfLua.registers)

-- Marks with <Leader>+m
vim.keymap.set('n', '<Leader>m', FzfLua.marks)

-- Rubocop shortcuts
vim.keymap.set("n", "<Leader>r", ":!rubocop % <CR>")
vim.keymap.set("n", "<Leader>R", ":!rubocop -A % <CR>")

-- Open lazygit with <Leader>gg
vim.keymap.set('n', '<Leader>gg', ':LazyGit<CR>')

-- Test Runner:
-- Setting the test runner as 'm' to run the test with minitest
vim.cmd("let g:test#ruby#minitest#executable = 'm'")
-- use spring to run rspec specs
vim.cmd("let test#ruby#rspec#executable = 'bin/spring rspec'")
-- <F9> run the current test
vim.keymap.set({ "n", "v", "i" }, "<F9>", ":TestFile <CR>")
-- <F10> run the current test at the current line!
vim.keymap.set({ "n", "v", "i" }, "<F10>", ":TestNearest <CR>")


-- LSP:
-- Show buffer diagnostics with <Leader>+d
vim.keymap.set('n', '<Leader>d', FzfLua.lsp_document_diagnostics)
-- Show all diagnostics with <Leader>+D
vim.keymap.set('n', '<Leader>D', FzfLua.lsp_workspace_diagnostics)

vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>p', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>P', ":Neoformat<CR>")
vim.keymap.set('n', '<leader>dh', vim.diagnostic.hide)
vim.keymap.set('n', '<leader>ds', vim.diagnostic.show)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>k', vim.diagnostic.open_float)

-- ERB tags shortcuts (this is bugged: https://github.com/windwp/nvim-autopairs/wiki/Endwise)
vim.keymap.set('i', '<C-=>', '<%=  %><Left><Left><Left>')
vim.keymap.set('i', '<C-->', '<%  %><Left><Left><Left>')

