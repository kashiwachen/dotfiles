# setup
# Install homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install starship
# curl -sS https://starship.rs/install.sh | sh

# Install tools
# brew install neovim yazi tmux ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide imagemagick font-symbols-only-nerd-font

# Install z jump
# git clone https://github.com/agkozak/zsh-z.git $HOME/.config/zsh.configs/
# end setup

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
# TODO: install fzf -> fuzzy search
# TODO: deploy yazi config
cp -r ./yazi $HOME/.config
