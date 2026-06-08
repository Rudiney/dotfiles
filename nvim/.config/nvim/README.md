# NVIM
My personal NeoVim config

## Keymaps

`<Leader>` is the default (`\`).

### Leader maps

| Key | Action |
| --- | --- |
| `<Leader>s` | Save |
| `<Leader>q` | Quit |
| `<Leader>t` | Open vsplit |
| `<Leader>x` | Copy buffer relative path to clipboard |
| `<Leader>y` | Find files (Telescope) |
| `<Leader>Y` | Find recent files (Telescope) |
| `<Leader>f` | Live grep (Telescope) |
| `<Leader>b` | Find buffers (Telescope) |
| `<Leader>m` | Find marks (Telescope) |
| `<Leader>n` | Find current file in tree |
| `<Leader>z` | Zoom/unzoom window |
| `<Leader>j` | Go to definition (AnyJump) |
| `<Leader>gg` | Open LazyGit |
| `<Leader>gs` | Git status (Telescope) |
| `<Leader>gd` | LSP definition |
| `<Leader>gD` | LSP declaration |
| `<Leader>gr` | LSP references |
| `<Leader>ca` | LSP code action |
| `<Leader>rn` | LSP rename |
| `<Leader>p` | LSP format |
| `<Leader>P` | Format with Neoformat |
| `<Leader>r` | Rubocop on file |
| `<Leader>R` | Rubocop autocorrect on file |
| `<Leader>d` | Buffer diagnostics (Telescope) |
| `<Leader>D` | Workspace diagnostics (Telescope) |
| `<Leader>dd` | Diagnostics to quickfix |
| `<Leader>dh` | Hide diagnostics |
| `<Leader>ds` | Show diagnostics |
| `<Leader>k` | Open diagnostic float |
| `<Leader>Q` | Open quickfix list (Telescope) |
| `<Leader>,` | Trigger Emmet |

### Other maps

| Key | Action |
| --- | --- |
| `K` | LSP hover |
| `<C-h/j/k/l>` | Move between windows |
| `⌥j` / `⌥k` | Move line/selection down/up |
| `<` / `>` (visual) | Outdent / indent, keep selection |
| `<C-=>` / `<C-->` (insert) | Insert ERB `<%= %>` / `<% %>` |

## Setup (OUTDATED)
1. Install all de required dependencies with NeoVim: 
    `brew install neovim ripgrep fd`
1. Install [VimPlug](https://github.com/junegunn/vim-plug/?tab=readme-ov-file#neovim)
1. :PlugInstall
