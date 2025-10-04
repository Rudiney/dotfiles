# Rudi's personal dotfiles

This repo follows the [GNU stow](https://www.gnu.org/software/stow/) naming convention to ealisy
setup and share dotfiles between machines.


## New machine install steps
1. [brew](https://brew.sh)
1. [Oh-my-zsh](https://ohmyz.sh/#install)
1. [Monaspace NERD font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Monaspace.zip)
1. brew packages: `brew install neovim ripgrep fd mise gh stow lazygit kitty`
    - [NeoVim](https://neovim.io)
    - RipGrep
    - fd
    - [mise](https://mise.jdx.dev)
    - gh
    - [stow](https://www.gnu.org/software/stow/)
    - lazygit
    - kitty
1. stow dotfiles: `stow zsh nvim vimplug kitty mise`
1. install yarn with `corepack enable`
1. install node->neovim lib: `yarn global add neovim`
1. install ruby->neovim lib: `gem install neovim`
1. open `nvim` and run `:PlugInstall`
    > run `:checkhealth` for a health report
