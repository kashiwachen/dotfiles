# Dependancies
# TODO: install homebrew
# TODO: install neovim
# TODO: install terminal(alacritty/kitty)
# TODO: install CLI shell(fish)
# TODO: install shell prompt(starship)
# TODO: install tmux
# TODO: install 

# TODO: Not test yet
# sync nvim config
cp -r ./nvim $HOME/.config
# The followings are TODOs
# sync alacritty config
cp -r ./alacritty $HOME/.config
# sync starship config
cp ./starship.toml $HOME/.config/starship.toml
# sync fish shell config
cp -r ./fish $HOME/.config
# sync git config
cp -r ./git/.git* $HOME
# sync a git diff script
cp -r ./bin $HOME
# Sync CLI tools
# sync neofetch config
cp -r ./neofetch $HOME/.config
# TODO: install z jump
# TODO: install fzf -> fuzzy search
# sync tmux config
cp -r ./tmux/tmux.conf $HOME/.tmux.conf
# sync common used scripts
cp -r ./bin $HOME
