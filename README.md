# My dotfiles

My simple dotfiles that I will update more in the future

## Requirements

Ensure Installed:

### Git

```
pacman -S git
```
### Stow

```
pacman -S stow
```
### NVM

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

### Git Bash Prompt

```
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
```

## Installation

```
$ git clone https://github.com/thenerdic/dotfiles.git
$ cd dotfiles
```

Then use stow to create symlinks

```
$ stow .
```
