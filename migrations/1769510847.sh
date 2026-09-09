echo "Remove obsolete Chromium package migration"

if omarchy-pkg-present omarchy-chromium; then
  pkill -x chromium 2>/dev/null || true
  omarchy-pkg-drop omarchy-chromium
fi
