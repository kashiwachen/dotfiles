source $HOME/.config/zsh.configs/zsh-z/zsh-z.plugin.zsh

# yazi(y) shell wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

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
alias ls="eza -lag --header"
alias info="neofetch"

## git
alias gt="git"

## tmux
alias tm="tmux"
alias tma="tmux at"
alias tmt="tmux at -t"
alias tmk="tmux kill-session -t"
alias tml="tmux ls"

## terraform

alias tf="terraform"

# Launch with starship
eval "$(starship init zsh)"

# Get in to vi mode in terminal
bindkey -v
export EDITOR=nvim

# Set up fzf key bindings and fuzzy completions: search file(^T) & history(^R)
source <(fzf --zsh)
