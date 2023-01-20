if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

# editor setup
set -gx EDITOR nvim

# starship setup
set -gx STARSHIP_CONFIG "$HOME/.config/starship.toml"
set -gx STARSHIP_CACHE "$HOME/.starship/cache"

# alias setup
alias python="python3"
alias pip="pip3"
alias vim="nvim"
alias vi="nvim"
alias lg="lazygit"

alias tm="tmux"
alias tma="tmux at"
alias tmt="tmux at -t"
alias tmk="tmux kill-session -t"
alias tml="tmux ls"

alias ls="exa -lag --header"

# colored man setup
set -g man_blink -o red
set -g man_bold -o green
set -g man_standout -b black 93a1a1
set -g man_underline -u 93a1a1
