#!/bin/bash

# Define los atajos de Hyprland
SHORTCUTS="
📌 Gestión de ventanas:
 -   + Q → Cerrar ventana
 -   + F → Ventana flotante
 -   + 󰘶  (SHIFT) + F → Falsa pantalla completa
 -   + 󰍽  (Click) → Mover ventana
 - F11 → Pantalla completa

📌 Espacios de trabajo:
 -   + [1-9] → Cambiar de espacio
 -   + Shift + [1-9] → Mover ventana a otro espacio

📌 Otras funciones:
 -   + E → Explorador de archivos (gráfico)
 -   + R → Explorador de archivos (terminal)
 -   + D → Lanzador de aplicaciones (rofi)
 -   + Shift + D → Apagar, reiniciar, cerrar sesión...
 -   + Enter/T → Terminal
 -   + 󰘶  (Shift) + P → Hyprpicker (selector de color)

Para más funcionalidad revisar ~/.config/hypr/hyprland.conf
"

# Notificación con notify-send
notify-send "🖥️ Atajos de Hyprland" "$SHORTCUTS"
exit 0

