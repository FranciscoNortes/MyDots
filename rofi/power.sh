#!/bin/bash

# Opciones del menú
options="󰐥
󰦛
󰍃
󰏦
󰜗
"

# Obtener la ruta del tema
THEME_PATH="$(dirname "$0")/power.rasi"

# Asegurar que rofi use el tema correcto
export ROFI_CONFIG="$THEME_PATH"

# Ejecutar rofi con el tema correcto
selected=$(echo -e "$options" | rofi -dmenu -p "Elige una acción:" -theme "$THEME_PATH" -timeout 20)

# Ejecutar la acción correspondiente
case "$selected" in
    "󰐥") systemctl poweroff ;;
    "󰦛") systemctl reboot ;;
    "󰍃") hyprctl dispatch exit ;;
    "󰏦") systemctl suspend ;;
    "󰜗") systemctl hibernate ;;
    "") hyprlock ;;
    *) exit 0 ;;
esac

