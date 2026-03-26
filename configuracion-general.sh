#!/bin/bash

echo "🚀 INICIANDO CONFIGURACIÓN GENERAL DEL SISTEMA..."

# --------------------------------------------------
# 1. Actualización del Sistema Operativo
# --------------------------------------------------
echo "🔄 [1/2] Actualizando repositorios y paquetes (Esto puede tomar un minuto)..."
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

# --------------------------------------------------
# 2. Configuración de Zona Horaria (Perú/Lima)
# --------------------------------------------------
echo "🌍 [2/2] Configurando la zona horaria a America/Lima..."
sudo ln -sf /usr/share/zoneinfo/America/Lima /etc/localtime
sudo dpkg-reconfigure -f noninteractive tzdata

echo "✅ CONFIGURACIÓN GENERAL COMPLETADA CON ÉXITO."
