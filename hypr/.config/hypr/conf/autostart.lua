-------------------
---- AUTOSTART ----
-------------------

local programs = require("conf.variables").programs

hl.on("hyprland.start", function ()
    hl.exec_cmd(programs.browser, { workspace = "1 silent" })
    hl.exec_cmd(programs.terminal, { workspace = "2 silent" })
    hl.exec_cmd("hyprpaper & hypridle")
    hl.exec_cmd("waybar & swaync")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("fcitx5")
    hl.exec_cmd("playerctld daemon")
    hl.exec_cmd("solaar --window=hide")  -- logitech
end)
