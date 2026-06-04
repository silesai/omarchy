-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and resolutions possible: hyprctl monitors all
-- Format: monitor = [port], resolution, position, scale

local omarchy_gdk_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "DP-2", mode = "preferred", position = "0x0", scale = "1" })
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "2560x0", scale = "1", transform=3 })
