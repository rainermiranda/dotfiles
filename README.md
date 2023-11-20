Public dotfiles of @eumirandarainerm, which contains configuration files and other assets.

# INSTALL

1. Clone this repository in your `${HOME}`
```
cd ${HOME} && git clone https://github.com/rainermiranda/dotfiles.git .dotfiles
```

2. Run `setup.sh` to stow assets
```
cd ${HOME}/.dotfiles && ./setup.sh
```

3. Add the line below to your `.bashrc` file. 
```
. "${HOME}/.oh-my-shell/init.sh"
```
Any changes you would make to the .bashrc file should now be made to the file above

# SOFTWARES

## Neovim

1. Install the [latest version of neovim](https://github.com/neovim/neovim/releases/tag/stable) to `/usr/local/nvim`
```
# For linux64
cd /tmp && wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
sudo rm -rf /usr/local/nvim/ && sudo tar -C /usr/local/ -xzf nvim-linux64.tar.gz && sudo mv /usr/local/nvim-linux64 /usr/local/nvim
```

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

1. Install [Starship](https://starship.rs/). The startup line is already added to the init.sh

2. Restart terminal

## asdf

1. Install [asdf](https://asdf-vm.com/guide/getting-started.html). The startup line has already added to the init.sh

2. Install plugins
- [Kubectl](https://github.com/asdf-community/asdf-kubectl)
- [Helm](https://github.com/Antiarchitect/asdf-helm)

3. Help with plugins, [click here](https://z-uo.medium.com/muliple-version-of-kubectl-easy-with-asdf-aa3ff72d6e9)

# MISC

## Nerd fonts

1. Install some [Nerd Font](https://www.nerdfonts.com/). I'm using Hack Nerd Font.

