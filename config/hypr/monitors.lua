-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and resolutions possible: hyprctl monitors all
-- Format: monitor = [port], resolution, position, scale

local omarchy_gdk_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))
hl.monitor({ output = "DP-2", mode = "preferred", position = "0x0", scale = "1" })
hl.monitor({ output = "HDMI-A-1", mode = "preferred", position = "0x0", scale = "1", transform=3 })

local monitors = {
    ["DP-2"] = { 1, 2, 3, 4, 5 },
    ["HDMI-A-1"] = { 11, 22, 33, 44, 55 }
}

-- 1. Configure Workspaces
for monitor, workspaces in pairs(monitors) do
    for _, ws in ipairs(workspaces) do
        local options = "persistent:true"

        -- Equivalent to: workspace = ID, monitor:NAME, OPTIONS
        hyprland.conf.workspace = string.format("%d,monitor:%s,%s", ws, monitor, options)
    end
end

-- 2. Exec-once
hyprland.conf["exec-once"] = "omarchy-workspace-switch 1"

for i = 1, 5 do
    hyprland.bind("SUPER", tostring(i), "exec", "omarchy-workspace-switch " .. i)
end