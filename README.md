# Dotfiles

I personally start to use the following configures of some tools for daily development:

## TODO

-[] Add document for basic setup
  -[] `git`
-[] Separate the scripts from deploy.sh
-[] Create setup.sh to install tools

## Tutorial

1. install `homebrew`
2. install `Hack Nerd Font`, `fish`, `wezterm`, `exa`, `tree`, `icdiff` throught `homebrew`
3. install `starship`
4. install `fisher`(fish plugin manager) and cli tools
5. configure fish shell
    1. especially `$PATH` throught `fish_add_path /opt/homebrew/bin`
    2. default shell for the terminal

## Terminal

- CLI Ttools
  - neofetch(check system info)
  - exa
  - tree
- tmux
- neovim
- starship prompt
- fish shell
  - fisher(plugin manager)
    - z
    - fzf
- wezterm

### DEPRECATED

- oh-my-zsh/zsh
- alacritty

## Code

- programming language linters:
  - python:
    - pylint
    - flake8
    - .pre-commit config
- git
- HHKB keybord config

## Claude Code Configuration

To sync Claude Code configs across machines:

```bash
# Remove existing directories and files
rm -rf ~/.claude/agents ~/.claude/prompts
rm -f ~/.claude/CLAUDE.md

# Create symbolic links to dotfiles repo
ln -s /path/to/dotfiles/claude/agents ~/.claude/agents
ln -s /path/to/dotfiles/claude/prompts ~/.claude/prompts
ln -s /path/to/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
```

This creates symbolic links so changes in either location stay synchronized automatically.

## Scripts

- Backup target configuration with `backup.sh`
- Deploy(Copy) target configuration with `deploy.sh`
