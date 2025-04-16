#!/bin/bash
# gosha.sh 
# Автоматическая установка Gosha на VPS с минимальной Ubuntu

set -e

# Обновление системы
apt update && apt upgrade -y
apt install -y python3 python3-pip git curl unzip nano

# Клонируем скрипты Gosha
cd /root
rm -rf gosha-deploy
git clone https://github.com/dima-botmaker/gosha-deploy.git
cd gosha-deploy
chmod +x install.sh

# Запуск
./install.sh
