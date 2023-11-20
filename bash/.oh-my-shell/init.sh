# Go
export GOPATH=${HOME}/workspace/go
export PATH=$PATH:/usr/local/go/bin

# Neovim
export PATH=${PATH}:/usr/local/nvim/bin
alias neovim='nvim'
alias vim='nvim'

# Starship
export STARSHIP_CONFIG=${HOME}/.config/starship/starship.toml
eval "$(starship init bash)"

# asdf
. "$HOME/.asdf/asdf.sh"

