local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('sheerun/vim-polyglot')

-- Themes
-- Plug('tanvirtin/monokai.nvim')
-- Plug('ofirgall/ofirkai.nvim')
-- Plug('carakan/new-railscasts-theme')
-- Plug('sickill/vim-monokai')
Plug('Mofiqul/dracula.nvim')

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

-- change the default behavior of yank on deleting
-- Plug('svermeulen/vim-easyclip')
Plug('svermeulen/vim-cutlass')

Plug('kdheepak/lazygit.nvim')

-- Fancy icons
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua')

-- telescope (file finder)
Plug('nvim-lua/plenary.nvim')
Plug('ibhagwan/fzf-lua')

-- Tpope's magic
Plug('tpope/vim-repeat')
Plug('tpope/vim-sensible')
Plug('tpope/vim-endwise')
Plug('tpope/vim-surround')
Plug('tpope/vim-commentary')
Plug('tpope/vim-rails')

Plug('nvim-lualine/lualine.nvim')

Plug('markstory/vim-zoomwin')
Plug('windwp/nvim-autopairs')
-- Plug('zbirenbaum/copilot.lua')
Plug('github/copilot.vim')
-- Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes yarn install' })
Plug('brianhuster/live-preview.nvim')
Plug('kmoschcau/emmet-vim') -- fork of fixing an issue Plug('mattn/emmet-vim')
Plug('vim-test/vim-test')

-- Fancy tabs
Plug('akinsho/bufferline.nvim', { tag = '*' })

-- LSP
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/nvim-cmp')
Plug('dcampos/nvim-snippy')
Plug('dcampos/cmp-snippy')
Plug('hrsh7th/cmp-buffer')

Plug('pechorin/any-jump.vim')

Plug('stevearc/quicker.nvim')
Plug('rachartier/tiny-glimmer.nvim')

-- Multiple code formatters
Plug('sbdchd/neoformat')

-- Claude
Plug('greggh/claude-code.nvim')

Plug('imsnif/kdl.vim')

-- Plug('ahkohd/buffer-sticks.nvim')

vim.call('plug#end')

