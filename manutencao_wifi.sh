#!/bin/bash
set -uo pipefail

REPO_DIR="/usr/src/aic8800-1.0.0"
YAY_CACHE="$HOME/.cache/yay/aic8800d80-dkms/aic8800d80"
KVER="$(uname -r)"

echo "--- Manutenção do driver AIC8800 (kernel $KVER) ---"

if [ ! -d "$REPO_DIR" ] || [ ! -d "$YAY_CACHE" ]; then
    echo "AVISO: pacote aic8800d80-dkms ainda não instalado nesta máquina."
    echo ""
    echo "Passo a passo para instalar via AUR:"
    echo "  1. Garanta que o yay está instalado:"
    echo "       sudo pacman -S --needed base-devel git"
    echo "       git clone https://aur.archlinux.org/yay.git"
    echo "       cd yay && makepkg -si"
    echo "  2. Instale o pacote do driver:"
    echo "       yay -S aic8800d80-dkms"
    echo "     (isso clona https://github.com/shenmintao/aic8800d80 automaticamente"
    echo "      para $YAY_CACHE e prepara $REPO_DIR)"
    echo "  3. Rode este script de novo para atualizar/reconstruir o módulo."
    exit 1
fi

echo "1. Atualizando cache do yay..."
sudo git -C "$YAY_CACHE" fetch origin || {
    echo "Falha no fetch. Abortando."
    exit 1
}
sudo git -C "$YAY_CACHE" checkout main
sudo git -C "$YAY_CACHE" reset --hard origin/main

echo "2. Atualizando fonte usada pelo DKMS..."
sudo git -C "$REPO_DIR" pull origin main || {
    echo "Falha no pull. Abortando."
    exit 1
}

echo "3. Reconstruindo via DKMS para $KVER..."
sudo dkms remove aic8800/1.0.0 -k "$KVER" 2>/dev/null
sudo dkms build -m aic8800 -v 1.0.0 -k "$KVER"

if [ $? -ne 0 ]; then
    echo "ERRO: build falhou. NÃO vou reiniciar."
    echo "Veja: /var/lib/dkms/aic8800/1.0.0/build/make.log"
    exit 1
fi

sudo dkms install -m aic8800 -v 1.0.0 -k "$KVER"
