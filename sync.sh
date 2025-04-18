#!/bin/bash

REPO_PATH="$HOME/projects/personal/neovim-config"
NVIM_CONFIG_PATH="$HOME/.config/nnvim"

timestamp=$(date +"%Y%m%d-%H%M%S")

install_config() {
  echo "Installing Neovim config..."

  if [ -d "$NVIM_CONFIG_PATH" ]; then
    BACKUP_PATH="${NVIM_CONFIG_PATH}.old-${timestamp}"
    echo "Existing config found. Backing it up to $BACKUP_PATH"
    mv "$NVIM_CONFIG_PATH" "$BACKUP_PATH"
  fi

  mkdir -p "$NVIM_CONFIG_PATH"

  rsync -av \
    --exclude '.git' \
    --exclude '.gitignore' \
    --exclude 'README.md' \
    --exclude 'LICENSE' \
    --exclude 'sync.sh' \
    "$REPO_PATH/" "$NVIM_CONFIG_PATH/"

  echo "Neovim config installed at $NVIM_CONFIG_PATH"
}

update_repo() {
  echo "Updating repo from ~/.config/nvim..."

  rsync -av --delete \
    --exclude '.git' \
    --exclude '.gitignore' \
    --exclude 'README.md' \
    --exclude 'LICENSE' \
    --exclude 'sync.sh' \
    "$NVIM_CONFIG_PATH/" "$REPO_PATH/"

  # cd "$REPO_PATH"
  # git add .
  # git commit -m "Update config from ~/.config/nvim"

  echo "Repo updated at $REPO_PATH"
}

case "$1" in
install)
  install_config
  ;;
update)
  update_repo
  ;;
*)
  echo "Usage: $0 {install|update}"
  exit 1
  ;;
esac
