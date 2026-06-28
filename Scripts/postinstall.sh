#!/bin/bash

set -e

# Detect package manager
if command -v pacman &> /dev/null; then
    PM="sudo pacman -S --noconfirm"
elif command -v apt &> /dev/null; then
    PM="sudo apt install -y"
elif command -v dnf &> /dev/null; then
    PM="sudo dnf install -y"
else
    echo "No supported package manager found"
    exit 1
fi

# Install basics
$PM git curl wget

# Install fish
$PM fish

# Clone dotfiles
git clone https://github.com/KaziuuMaSer-1/KaziuuMaSer-s_Dots.git ~/.files

# Stow dotfiles
$PM stow
mkdir -p ~/.files/Pictures/Wallpapers
cd ~/.files
stow .
cd ~

# Install brew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Setup brew for fish
echo 'eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> ~/.config/fish/config.fish

# Install DankMaterialShell
curl -fsSL https://install.danklinux.com | sh

echo "Done! Restart terminal and run fish."
