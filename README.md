# Omarchy

## What is this
My own take on marchy. You need to install

- jamesdsp
- firefox
- chrome
- vscode
  - numbered bookmarks
  - lua

## ISO creation and test ISO
From directory containing [omarchy-iso repo](https://github.com/omacom/omarchy-iso)
```bash
OMARCHY_PATH="/home/silesai/Downloads/omarchy" \
OMARCHY_INSTALLER_REF="dev" \
 ./bin/omarchy-iso-make --local-source
```

```bash
sudo pacman -S virt-manager qemu libvirt dnsmasq iptablesEnable
sudo systemctl enable --now libvirtd
sudo usermod -aG libvirt $USER
```

## .config/hypr/WindowRules for IDEA search
windowrule = match:class ^jetbrains-.+$, match:float on, tag +jb
windowrule = match:tag jb, stay_focused on
windowrule = match:tag jb, no_initial_focus on

## License
Omarchy is released under the [MIT License](https://opensource.org/licenses/MIT).
