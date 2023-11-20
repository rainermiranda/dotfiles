Public dotfiles of @eumirandarainerm, which contains configuration files and other assets.

# INSTALL

1. Clone this repository in your `${HOME}`
```
cd ${HOME} && git clone https://github.com/rainermiranda/dotfiles.git
```

2. Run `setup.sh` to stow assets

# SOFTWARES

## Neovim

1. Install the latest version of neovim to `/usr/local/neovim`

## Alacritty

1. Install Alacritty

## Tmux

1. Install tmux

2. Clone TPM repository (https://github.com/tmux-plugins/tpm) to TMUX configuration directory
```
git clone https://github.com/tmux-plugins/tpm.git ${HOME}/.config/tmux/plugins/tpm
```

3. Start TMUX and press `prefix` (C-a) + I to install tpm (wait until the message appears)

## Starship

1. Install [Starship](https://starship.rs/)

2. Restart terminal

## asdf

1. Install [asdf](https://asdf-vm.com/guide/getting-started.html)

2. Install plugins
- [Kubectl](https://github.com/asdf-community/asdf-kubectl)
- [Helm](https://github.com/Antiarchitect/asdf-helm)

3. Help with plugins, [click here](https://z-uo.medium.com/muliple-version-of-kubectl-easy-with-asdf-aa3ff72d6e9)
