local monitors = {
  ["DP-2"] = { 1, 2, 3, 4 },
  ["HDMI-A-1"] = { 8, 9, 10 },
}

for monitor, workspaces in pairs(monitors) do
  for index, workspace in ipairs(workspaces) do
    hl.workspace_rule({
      workspace = tostring(workspace),
      monitor = monitor,
      default = index == 1,
      persistent = true,
    })
  end
end
