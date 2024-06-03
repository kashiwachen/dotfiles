source $HOME/.config/zsh.configs/zsh-z/zsh-z.plugin.zsh

# Export environment variables

## bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

### bun completions
[ -s "/Users/oscar.chen/.bun/_bun" ] && source "/Users/oscar.chen/.bun/_bun"

## starship setup
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
export STARSHIP_CACHE="$HOME/.starship/cache"

## system editor
export EDITOR nvim

## cargo
export CARGO_INSTALL="$HOME/.cargo"
export PATH="$CARGO_INSTALL/bin:$PATH"

# alias setup

## general 
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

# Launch with starship
eval "$(starship init zsh)"
