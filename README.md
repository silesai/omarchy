# Omarchy

## ISO creation
From directory containing [omarchy-iso repo](https://github.com/omacom/omarchy-iso)
```bash
OMARCHY_PATH="/home/sadi/Projects/internal/omarchy" \
OMARCHY_INSTALLER_REF="dev" \
 ./bin/omarchy-iso-make --local-source
```
My own take on marchy. You need to install

- jamesdsp
- firefox
- chrome
- vscode
  - numbered bookmarks
  - lua

## .config/hypr/WindowRules for IDEA search
windowrule = match:class ^jetbrains-.+$, match:float on, tag +jb
windowrule = match:tag jb, stay_focused on
windowrule = match:tag jb, no_initial_focus on

## License

Omarchy is released under the [MIT License](https://opensource.org/licenses/MIT).
