local vim = vim
local Plug = vim.fn['plug#']

-- disable netrw nvim plugin as recommended by nvim-tree plugin
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

vim.call('plug#begin')
  -- Themes
  Plug('sheerun/vim-polyglot')
  -- Plug('tanvirtin/monokai.nvim')
  -- Plug('ofirgall/ofirkai.nvim')
  -- Plug('carakan/new-railscasts-theme')
  -- Plug('sickill/vim-monokai')
  Plug('Mofiqul/dracula.nvim')

  -- change the default behavior of yank on deleting
  Plug('tpope/vim-repeat')
  Plug('svermeulen/vim-easyclip')

  -- Fancy icons
  Plug('nvim-tree/nvim-web-devicons')
  Plug('nvim-tree/nvim-tree.lua')

  -- telescope (file finder)
  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-telescope/telescope.nvim', { tag = '0.1.6' })
  Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate'})

  -- Tpope's magic
  Plug('tpope/vim-sensible')
  Plug('tpope/vim-endwise')
  Plug('tpope/vim-surround')
  Plug('tpope/vim-commentary')
  Plug('tpope/vim-rails')

  Plug('kdheepak/lazygit.nvim')

  Plug('nvim-lualine/lualine.nvim')

  -- Linter
  -- Plug('dense-analysis/ale')

  Plug('markstory/vim-zoomwin')
  Plug('windwp/nvim-autopairs')
  Plug('zbirenbaum/copilot.lua')
  Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes pnpm install' })
  Plug('mattn/emmet-vim')
  Plug('vim-test/vim-test')

  -- Auto CTags management
  -- Plug('ludovicchabant/vim-gutentags')

  -- Fancy tabs
  Plug('akinsho/bufferline.nvim', { tag = '*' })

  -- LSP
  Plug('williamboman/mason.nvim')
  Plug('williamboman/mason-lspconfig.nvim')
  Plug('neovim/nvim-lspconfig')
  Plug('hrsh7th/cmp-nvim-lsp')
  Plug('hrsh7th/nvim-cmp')

vim.call('plug#end')

-- remap leader to <Space>
-- vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- General settings
vim.opt.encoding = "utf-8"
vim.opt.ruler = true
vim.opt.showcmd = false
vim.opt.wrap = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.clipboard = "unnamed"
vim.opt.termguicolors = true

-- display extra whitespaces as dots
vim.cmd("set list listchars=tab:»·,trail:·,nbsp:␣")

-- Drawn a line at 120 character mark
vim.opt.textwidth = 120
vim.opt.colorcolumn = "120"

-- Display numbers and relative numbers
vim.wo.number = true
vim.wo.numberwidth = 5
vim.wo.rnu = true

-- Open new split panes to right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Highlight the current line
vim.opt.cursorline = true

-- Folding using identation
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 10
-- vim.opt.foldlevelstart = 2

-- Handy save & quit shortcuts with <Leader> + s and <Leader> + q
vim.keymap.set("n", "<Leader>s", ":w<CR>", {})
vim.keymap.set("n", "<Leader>q", ":q<CR>", {})

-- Open a vsplit with <Leader>+t
vim.keymap.set("n", "<Leader>t", ":vsp<CR>", {})

-- Move a line down with option + j
vim.keymap.set("n", "∆", ":m .+1<CR>==", { silent = true, remap = false })
vim.keymap.set("i", "∆", "<Esc>:m .+1<CR>==gi", {})

-- Move a line down with option + k
vim.keymap.set("n", "˚", ":m .-2<CR>==", { silent = true, remap = false })
vim.keymap.set("i", "˚", "<Esc>:m .-2<CR>==gi", {})

-- use Ctrl + hjkl to move between windows
vim.keymap.set({"n", "v", "i"}, "<C-j>", "<C-w>j", {})
vim.keymap.set({"n", "v", "i"}, "<C-k>", "<C-w>k", {})
vim.keymap.set({"n", "v", "i"}, "<C-h>", "<C-w>h", {})
vim.keymap.set({"n", "v", "i"}, "<C-l>", "<C-w>l", {})

-- <F7> run the current rspec test file
-- vim.keymap.set({"n", "v", "i"}, "<F7>", ":terminal bin/rspec % <CR>", {})
-- <F8> run the current rspec test at the current line!
-- vim.keymap.set({"n", "v", "i"}, "<F8>", ":terminal echo 'bin/rspec '.expand('%').':'.line('.') <CR>", {})
-- <F9> run the current test file 
--
-- Setting the test runner as 'm' to run the test with minitest
vim.cmd("let g:test#ruby#minitest#executable = 'm'")
vim.keymap.set({"n", "v", "i"}, "<F9>", ":TestFile <CR>", {})
-- <F10> run the current test at the current line!
vim.keymap.set({"n", "v", "i"}, "<F10>", ":TestNearest <CR>", {})

-- Rubocop shortcuts
vim.keymap.set("n", "<Leader>r", ":!rubocop % <CR>", {})
vim.keymap.set("n", "<Leader>R", ":!rubocop -A % <CR>", {})

-------- START: plugins config:

-- Theme
-- require('monokai').setup { palette = require('monokai').soda }
-- require('new-railscasts-theme').setup()
-- vim.cmd("color monokai")
vim.cmd("colorscheme dracula")

-- nvim-tree
require("nvim-tree").setup({
  update_cwd = true,
  -- update_focused_file = {
  --   enable = true,
  --   update_cwd = true,
  -- },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

-- Find current file in tree with <Leader>+n
vim.keymap.set("n", "<Leader>n", ":NvimTreeFindFile<CR>", { silent = true, remap = false })

-- Telescope shortcuts:
local builtin = require('telescope.builtin')
--- Find files with <Leader>+y
vim.keymap.set('n', '<Leader>y', builtin.find_files, {})
--- Live grep with <Leader>+f
vim.keymap.set('n', '<Leader>f', builtin.live_grep, {})
-- Live grep in the current directory with <Leader>+F
vim.keymap.set('n', '<Leader>F', ':Telescope live_grep search_dirs=%:p:h<CR>', { silent = true, remap = false })
--- buffers with <Leader>+b
vim.keymap.set('n', '<Leader>b', builtin.buffers, {})
--- Git modified files with <Leader>+g
vim.keymap.set('n', '<Leader>g', builtin.git_status, {})
--- " to open registers 
vim.keymap.set('n', '"', builtin.registers, {})

--Format code with <Leader>+p
-- vim.keymap.set('n', '<Leader>p', builtin.lsp_format, {})

-- Open lazygit with <Leader>gg
vim.keymap.set('n', '<Leader>gg', ':LazyGit<CR>', { silent = true, remap = false })

-- Status line
require('lualine').setup({
  sections = {
    lualine_a = { 
      -- display only the first letter of the mode
      { 'mode', fmt = function(str) return str:sub(1,1) end }, 
    },
    lualine_b = {
      -- display only the first 9 letters of the branch
      { 'branch', fmt = function(str) return str:sub(1,9) end },
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
    lualine_y = { },
  },
})

require("copilot").setup({
  suggestion = {
    auto_trigger = true,
    keymap = {
      accept = "<TAB>",
      reject = "<ESC>",
    }
  }
})

require("nvim-autopairs").setup()

-- Emmet
--- Trigger Emmet with <Leader>+,
vim.g.user_emmet_leader_key = '<Leader>'
--- enable emmet only on Normal and Visual mode
vim.g.user_emmet_mode = 'nv'


--  Bufferline
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

-- LSPs stuff
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "solargraph", "rubocop", "biome", "eslint", "tsserver" },
})

local cmp = require("cmp")
cmp.setup({
  completion = {
    autocomplete = false,
  },

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'vsnip' }, -- For vsnip users.
  }, {
    { name = 'async_path' },
    { name = 'buffer' },
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup{ capabilities = capabilities }
lspconfig.biome.setup{ capabilities = capabilities }
lspconfig.solargraph.setup{ capabilities = capabilities }
lspconfig.rubocop.setup{ capabilities = capabilities }
lspconfig.biome.setup{ capabilities = capabilities }
lspconfig.eslint.setup{ capabilities = capabilities }
lspconfig.tsserver.setup{ capabilities = capabilities }

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})

