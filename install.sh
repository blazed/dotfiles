#!/bin/sh

echo "Installing dotfiles"

echo "Initializing submodules"
git submodule update --init --recursive

source install/link.sh

if [ -f /etc/arch-release ]; then
    echo -e "\n\nRunning Arch Linux"

    source install/arch.sh
fi

echo "Creating vim directories"
mkdir -p ~/.vim-tmp

echo "Settings zsh as default shell"
chsh -s $(which zsh)

echo "Done!"
