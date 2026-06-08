return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    branch = 'main', -- master is frozen; main is required on Neovim 0.11+/0.12
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local ensure_installed = {
        'bash', 'c', 'diff', 'html', 'lua', 'luadoc',
        'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'ruby',
      }

      require('nvim-treesitter').install(ensure_installed)

      vim.api.nvim_create_autocmd('FileType', {
        callback = function(args)
          -- start treesitter highlighting if a parser exists for this buffer
          if pcall(vim.treesitter.start, args.buf) then
            local ft = vim.bo[args.buf].filetype
            -- Ruby indent rules rely on vim regex; skip ts indentexpr for it
            if ft ~= 'ruby' then
              vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end
            -- Ruby also needs vim's regex highlighting for correct indenting
            if ft == 'ruby' then
              vim.bo[args.buf].syntax = 'on'
            end
          end
        end,
      })
    end,
  },
  {
    'imsnif/kdl.vim',
    ft = 'kdl',
  },
  {
    'kmoschcau/emmet-vim',
    ft = { 'html', 'eruby', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    init = function()
      -- Trigger Emmet with <Leader>+,
      vim.g.user_emmet_leader_key = '<Leader>'
      -- enable emmet only on Normal and Visual mode
      vim.g.user_emmet_mode = 'nv'
    end,
  },
}
