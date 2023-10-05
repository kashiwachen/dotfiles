# sync nvim config
cp -r $HOME/.config/nvim .
# The followings are TODOs
# sync alacritty config
cp -r $HOME/.config/alacritty .
# sync starship config
cp $HOME/.config/starship.toml .
# sync fish shell config
cp -r $HOME/.config/fish .
# sync git config
cp $HOME/.gitignore_global ./git
cp $HOME/.gitconfig ./git
cp $HOME/.gitflow_export ./git
cp $HOME/.config/git-diff-wrapper.sh ./git
# sync neofetch config
cp -r $HOME/.config/neofetch .
# sync tmux config
cp $HOME/.tmux.config ./tmux/tmux.config
