echo "Switch select bindings to launch or focus mode"

if [[ -f ~/.config/hypr/bindings.conf ]]; then
  sed -i '/SUPER, O, Obsidian, exec/ c\bindd = SUPER, O, Obsidian, exec, omarchy-launch-or-focus obsidian "uwsm-app -- obsidian -disable-gpu --enable-wayland-ime"' ~/.config/hypr/bindings.conf
  sed -i '/SUPER SHIFT, G, WhatsApp, exec/ c\bindd = SUPER SHIFT, G, WhatsApp, exec, omarchy-launch-or-focus-webapp WhatsApp "https://web.whatsapp.com/"' ~/.config/hypr/bindings.conf
fi
