local function switch_workspaces(target)
    local active_monitor = nil
    local active_ws, passive_ws

    -- Find the active and passive monitors
    for _, mon in ipairs(hl.get_monitors()) do
        if mon.focused then
            active_monitor = mon
        end
    end

    if active_monitor and active_monitor.id == 1 then
        active_ws = target
        passive_ws = target .. target
    else
        active_ws = target .. target
        passive_ws = target
    end

    hl.dispatch(hl.dsp.focus({ workspace = tostring(passive_ws) }))
    hl.dispatch(hl.dsp.focus({ workspace = tostring(active_ws) }))
end

local monitors = {
    ["DP-2"] = { 1, 2, 3, 4, 5 },
    ["HDMI-A-1"] = { 11, 22, 33, 44, 55 }
}

for monitor, workspaces in pairs(monitors) do
    for _, ws in ipairs(workspaces) do
        hl.workspace_rule({workspace=tostring(ws), monitor=monitor, persistent = true})
    end
end

for i = 1, 5 do
    hl.bind("SUPER + " .. i, function() switch_workspaces(i) end)
end

hl.on("hyprland.start", function() switch_workspaces(1) end)