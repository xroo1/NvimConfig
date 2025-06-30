#!/bin/bash

gr = "\033[0;32m"
rt = "\033[0m"

install_debian() {
    echo "Instalando dependências para Debian/Ubuntu..."
    sudo apt update
    sudo apt install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl git
}

install_arch() {
    echo "Instalando dependências para Arch Linux..."
    sudo pacman -Sy --noconfirm ninja git gettext cmake base-devel
}

# Verificando o sistema operacional
if [[ -f /etc/debian_version ]]; then
    install_debian
elif [[ -f /etc/arch-release ]]; then
    install_arch
else
    echo "Sistema operacional não suportado."
    exit 1
fi

echo "Clonando o repositório do Neovim..."
git clone https://github.com/neovim/neovim
cd neovim || exit

echo "Compilando o Neovim..."
make CMAKE_BUILD_TYPE=RelWithDebInfo

echo "Instalando o Neovim..."
sudo make install

echo -e "${gr}Instalação concluída!${rt}" 

