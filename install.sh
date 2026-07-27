#!/bin/bash
CONFIG_DIRS=("fastfetch" "hypr" "waybar" "kitty" "wlogout")

SOURCE_DIR="$HOME/Hyprland-Dotfiles/.config"
TARGET_DIR="$HOME/.config"

echo "=== Starting Configuration Update ==="

for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$TARGET_DIR/$dir" ]; then
        echo "[Backup] Renaming $TARGET_DIR/$dir to $dir-backup"
        rm -rf "$TARGET_DIR/$dir-backup"
        mv "$TARGET_DIR/$dir" "$TARGET_DIR/$dir-backup"
    else
        echo "[Info] Folder $TARGET_DIR/$dir not found, skipping backup."
    fi

    if [ -d "$SOURCE_DIR/$dir" ]; then
        echo "[Copying] Copying $dir to $TARGET_DIR"
        cp -r "$SOURCE_DIR/$dir" "$TARGET_DIR/"
    else
        echo "[Error] Source folder $SOURCE_DIR/$dir not found!"
    fi
done

echo "=== Update successfully completed! ==="
