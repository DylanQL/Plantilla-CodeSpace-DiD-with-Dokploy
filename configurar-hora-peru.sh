#!/bin/bash

echo "🌍 Configurando la zona horaria a America/Lima..."

sudo ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
sudo dpkg-reconfigure -f noninteractive tzdata

echo "✅ Zona horaria configurada correctamente."
