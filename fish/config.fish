if status is-interactive
    # Commands to run in interactive sessions can go here
end

# editor setup
set -gx EDITOR nvim

# starship setup
starship init fish | source
set -gx STARSHIP_CONFIG "$HOME/.config/starship.toml"
set -gx STARSHIP_CACHE "$HOME/.starship/cache"

# alias setup
alias python="python3"
alias pip="pip3"
alias v="nvim"
alias vc="nvim --clean"
alias lg="lazygit"
alias ls="exa -lag --header"
alias info="neofetch"
## git
alias gt="git"

## tmux
alias tm="tmux"
alias tma="tmux at"
alias tmt="tmux at -t"
alias tmk="tmux kill-session -t"
alias tml="tmux ls"

# colored man setup
set -g man_blink -o red
set -g man_bold -o green
set -g man_standout -b black 93a1a1
set -g man_underline -u 93a1a1

# Enable pyenv
# pyenv init - | source

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# cargo
export CARGO_INSTALL="$HOME/.cargo"
export PATH="$CARGO_INSTALL/bin:$PATH"
