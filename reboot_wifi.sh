#!/bin/bash

BASE_DIR="$HOME/Templates/aic8800d80/drivers/aic8800"

echo "--- Iniciando manutenção do driver Wi-Fi ---"

cd $BASE_DIR || exit

echo "1. Limpando e Compilando..."
make clean
make -j$(nproc)

echo "2. Instalando..."
sudo make install

echo "3. Carregando módulos na ordem correta..."

sudo rmmod aic8800_fdrv 2>/dev/null
sudo rmmod aic_load_fw 2>/dev/null

# Carrega na ordem certa
sudo insmod aic_load_fw/aic_load_fw.ko
sudo insmod aic8800_fdrv/aic8800_fdrv.ko

echo "--- Pronto! Verifique se o Wi-Fi apareceu. ---"
