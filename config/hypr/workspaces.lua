-- https://github.com/uhs-robert/dotfiles/blob/main/home/hypr/.config/hypr/config/monitors/init.lua
-- ^ this might be 

local function switch_workspaces(target)
    local monitors = hl.get_monitors() -- Returns a table of monitor objects
    local active_monitor = nil
    local passive_monitor = nil

    -- Find the active and passive monitors
    for _, mon in ipairs(monitors) do
        if mon.focused then
            active_monitor = mon
        else
            passive_monitor = mon
        end
    end

    -- Logic to determine workspace IDs
    local active_ws, passive_ws
    if active_monitor and active_monitor.id == 1 then
        active_ws = target
        passive_ws = target .. target
    else
        active_ws = target .. target
        passive_ws = target
    end

    -- Dispatch commands using the native Lua API
    hl.dsp.focus({ workspace = tostring(passive_ws) })
    hl.dsp.focus({ workspace = tostring(active_ws) })
    --hl.dsp.workspace({ name = tostring(passive_ws) })
    --hl.dsp.workspace({ name = tostring(active_ws) })
end

local monitors = {
    ["DP-2"] = { 1, 2, 3, 4, 5 },
    ["HDMI-A-1"] = { 11, 22, 33, 44, 55 }
}

-- 1. Configure Workspaces
for monitor, workspaces in pairs(monitors) do
    for _, ws in ipairs(workspaces) do
        hl.exec_cmd(string.format("workspace = %d,monitor:%s,persistent:true", ws, monitor))
    end
end

switch_workspaces(1)

for i = 1, 5 do
    hl.bind("SUPER + " .. i, function() 
      switch_workspaces(i)
    end)
end