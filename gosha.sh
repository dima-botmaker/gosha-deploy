#!/bin/bash
# Установщик Gosha – умного помощника

set -e

echo "🔧 Обновление системы..."
apt update && apt upgrade -y
apt install -y python3 python3-pip git curl unzip nano

echo "📦 Установка необходимых пакетов..."
pip3 install --upgrade pip

echo "🤖 Установка завершена. Добро пожаловать в Gosha!"
