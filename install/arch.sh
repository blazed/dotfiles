#!/bin/sh

echo "Checking for system updates..."
sudo pacman -Syu

if test ! $(which pacaur); then
    echo "Installing pacaur"

    mkdir -p /tmp/pacaur_install
    cd /tmp/pacaur_install

    sudo pacman -S binutils make gcc fakeroot --noconfirm --needed
    sudo pacman -S expac yajl git --noconfirm --needed
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=cower
    makepkg PKGBUILD --skippgpcheck
    sudo pacman -U cower*.tar.xz --noconfirm --needed
    curl -o PKGBUILD https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
    makepkg PKGBUILD
    sudo pacman -U pacaur*.tar.xz --noconfirm --needed
    cd ~
    rm -r /tmp/pacaur_install
fi

echo -e "\n\nInstalling arch packages..."
echo "=============================="

# cli
pacaur -Syy
pacaur -S ack --noconfirm --needed
pacaur -S tree --noconfirm --needed
pacaur -S wget --noconfirm --needed

# development tools
pacaur -S git --noconfirm --needed
pacaur -S hub-git --noconfirm --noedit --needed
pacaur -S fzf-git --noconfirm --noedit --needed
pacaur -S vim --noconfirm --noedit --needed
pacaur -S tmux --noconfirm --noedit --needed
pacaur -S zsh --noconfirm --noedit --needed
pacaur -S highlight --noconfirm --noedit --needed
pacaur -S nvm --noconfirm --noedit --needed
pacaur -S diff-so-fancy-git --noconfirm --noedit --needed
pacaur -S zsh-syntax-highlighting --noconfirm --noedit --needed
pacaur -S zsh-autosuggestions --noconfirm --noedit --needed
pacaur -S neovim --noconfirm --noedit --needed

exit 0
