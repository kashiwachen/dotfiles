# Dependancies
# TODO: install homebrew
  # TODO: install neovim
  # TODO: install yazi
  # TODO: install shell prompt(starship)
  # TODO: install tmux

# Deploy config and scrips
# nvim config
cp -r ./nvim $HOME/.config
# starship config
cp ./starship.toml $HOME/.config/starship.toml
# fish shell config
cp -r ./fish $HOME/.config
# git config
cp -r ./git/.git* $HOME
# a git diff script
cp -r ./bin $HOME
# CLI tools
# neofetch config
cp -r ./neofetch $HOME/.config
# tmux config
cp -r ./tmux/tmux.conf $HOME/.tmux.conf
# TODO: install z jump
# git clone zsh-z to .config/zsh.config/
# TODO: install fzf -> fuzzy search
# TODO: deploy yazi config
