# !/usr/bin/env bash
set -euo pipefail -o posix

configure_zsh() {
  # shell config
  if [[ "$SHELL" != "$(which zsh)" ]]; then
    echo "> Changing default shell to Zsh..."
    chsh -s "$(which zsh)"
  else
    echo "> Zsh is already the default shell."
  fi

  # zsh config
  if ! grep -q "source $HOME/.config/zsh/config.zsh" $HOME/.zshrc; then
    echo "source $HOME/.config/zsh/config.zsh" >>$HOME/.zshrc
    echo "> Load myown config.zsh in zsh shell"
  else
    echo "> Already loaded my own config.zsh"
  fi
}

configure_starship() {
  if ! grep -q 'eval "$(starship init zsh)"' $HOME/.zshrc; then
    echo '# Load starship prompt' >>$HOME/.zshrc
    echo 'eval "$(starship init zsh)"' >>$HOME/.zshrc
    echo "> Added starship init to .zshrc"
  fi
}

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tools
brew install \
  neovim yazi tmux eza lazygit gh \
  starship fzf z \
  ffmpeg sevenzip jq poppler fd ripgrep zoxide imagemagick \
  colima \
  font-symbols-only-nerd-font

# Install rectangle
brew install --cask \
  rectangle raycast 1password wezterm \
  arc firefox readdle-spark \
  notion notion-calendar \
  spotify

# Install z jump
git clone https://github.com/agkozak/zsh-z.git $HOME/.config/zsh.configs/zsh-z/

# Deploy config and scrips
echo '> Start to copy the configurations'
## wezterm config
cp -r $PWD/wezterm $HOME/.config
## nvim config
cp -r ./nvim $HOME/.config
## starship config
cp ./starship.toml ~/.config/starship.toml
## git config
cp -r ./git/.git* $HOME
## a git diff script
cp -r ./bin $HOME
## neofetch config
cp -r ./neofetch $HOME/.config
## tmux config
cp -r ./tmux/tmux.conf $HOME/.tmux.conf
## yazi config
cp -r ./yazi $HOME/.config

echo "> link starship.toml to dotfiles"
ln -sfn $PWD/starship.toml ~/.config/starship.toml

mkdir $HOME/.config/zsh
cp $PWD/zsh/config.zsh $HOME/.config/zsh/config.zsh
echo "> link cofig.zsh to dotfiles"
ln -sfn $PWD/zsh/config.zsh $HOME/.config/zsh/config.zsh

configure_zsh
configure_starsh
