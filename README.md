# neovim-config

Starting from scratch!

This is my personal Neovim config, built from the ground up after using LazyVim
for a while. I wanted to better understand and control my setup, so I'm
rebuilding everything step by step. It's a work in progress, expect things
to evolve as I go.

## Syncing config

To sync this config with `~/.config/nvim`, I use the `sync.sh` script.
It supports two operations:

### Install

Copies the contents of this repo to `~/.config/nvim`, renaming the
folder and removing unneeded files like `README.md`, `LICENSE`,
`.git`, `.gitignore` and `sync.sh`.

```bash
./sync.sh install
```

### Update

Copies your current Neovim config from ~/.config/nvim back into
this repo, replacing its contents. This is useful when you’ve
made local changes directly in your config and want to persist them.

```bash
./sync.sh update
```

### Configuration

Make sure to update the following variables at the top of the `sync.sh`
script to match your own setup:

```bash

REPO_PATH="$HOME/projects/personal/neovim-config"
NVIM_CONFIG_PATH="$HOME/.config/nvim"
```

Change `REPO_PATH` to where this repo is located on your machine,
and `NVIM_CONFIG_PATH` to wherever your actual Neovim config lives.

## Plugins to consider

- <https://github.com/szw/vim-maximizer>
- <https://github.com/lukas-reineke/indent-blankline.nvim>
- <https://github.com/gbprod/substitute.nvim?tab=readme-ov-file>
- <https://github.com/folke/which-key.nvim>
